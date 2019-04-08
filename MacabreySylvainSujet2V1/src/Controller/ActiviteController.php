<?php

namespace App\Controller;

use App\Entity\Activite;
use App\Entity\Localisation;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bridge\Doctrine\RegistryInterface;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Security\Core\Exception\InvalidCsrfTokenException;
use Twig\Environment;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use App\helper\Helper_date;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;


class ActiviteController extends Controller
{
    /**
     * @Route("/activite", name="activite.index")
     * @throws \Doctrine\ORM\ORMException
     */
    public function index(RegistryInterface $doctrine) {
        $activites = $doctrine->getRepository(Activite::class)->findAll();
        $doctrine->getEntityManager()->flush();
        return $this->render("activite/index.html.twig", ['activites' => $activites]);
    }

    /**
     * @Route("/activite/add",name="activite.add")
     * @Method({"GET"})
     * @Security("has_role('ROLE_ADMIN')")
     */
    public function addActivite(Request $request, RegistryInterface $doctrine, Environment $twig) {
        $localisations = $doctrine->getRepository(Localisation::class)->findAll();
        return $this->render('activite/add.html.twig', ['localisations'=> $localisations]);
    }

    /**
     * @Route("/activite/validFormAdd",name="activite.validFormAdd")
     * @Method({"POST"})
     * @Security("has_role('ROLE_ADMIN')")
     */
    public function validFormAdd(Request $request, RegistryInterface $doctrine) {
        if(!$this->isCsrfTokenValid('activite_add', $request->get('token'))) {
            throw new InvalidCsrfTokenException('Invalid CSRF token');
        }
        $donnees['nomActivite'] = $request->request->get('nomActivite');
        $donnees['dateCreation'] = $request->request->get('dateCreation');
        $donnees['countInscription'] = $request->request->get('countInscription');
        $donnees['type'] = $request->request->get('type');
        $donnees['localisationId'] = $request->request->get('localisationId');

        $erreurs=array();
        if((! preg_match("/^[A-Za-z ]{2,}/", $donnees['nomActivite'])))
            $erreurs['nomActivite'] = 'Nom composé de 2 lettres minimum';
        $helper = new Helper_date();
        if(! $helper->verifDateFrench($donnees['dateCreation']))
            $erreurs['dateCreation'] = 'Le format d\'un date est jj/mm/aaaa. (jj, mm, aaaa sont des valeurs entières)';
        if(! is_numeric($donnees['countInscription']))
            $erreurs['countInscription'] = 'Saisir une valeur numérique';
        if((! preg_match("/^[A-Za-z ]{2,}/", $donnees['type'])))
            $erreurs['type'] = 'Nom composé de 2 lettres minimum';
        if(! is_numeric($donnees['localisationId']))
            $erreurs['localisationId'] = 'Veuillez saisir une valeur';


        if(! empty($erreurs)) {
            $localisations = $doctrine->getRepository(Localisation::class)->findAll();
            return $this->render('activite/add.html.twig', ['donnees' => $donnees, 'erreurs' => $erreurs, 'localisations' => $localisations]);
        } else {
            $activite = new Activite();
            $activite->setNomActivite($donnees['nomActivite']);
            $activite->setDateCreation($helper->dateFrenchToAmerican($donnees['dateCreation']));
            $activite->setCountInscription($donnees['countInscription']);
            $activite->setType($donnees['type']);
            $localisation = $doctrine->getRepository(Localisation::class)->find($donnees['localisationId']);
            $activite->setLocalisationId($localisation);
            $em = $this->getDoctrine()->getManager();
            $em->persist($activite);
            $em->flush();
            return $this->redirectToRoute('activite.index');
        }
    }

    /**
     * @Route("/activite/edit/{id}",name="activite.edit", requirements={"id" = "\d+"})
     * @Method({"GET"})
     * @Security("has_role('ROLE_ADMIN')")
     */
    public function editActivite(RegistryInterface $doctrine, $id) {
        $activite = $doctrine->getRepository(Activite::class)->find($id);
        $idLocalisation = $activite->getLocalisationId()->getId();
        $localisations = $doctrine->getRepository(Localisation::class)->findAll();
        return $this->render('activite/edit.html.twig', ['donnees' => $activite, 'localisations'=> $localisations, 'idLocalisation'=> $idLocalisation]);
    }

    /**
     * @Route("/activite/validFormEdit",name="activite.validFormEdit")
     * @Method({"PUT"})
     * @Security("has_role('ROLE_ADMIN')")
     */
    public function validFormEdit(Request $request, RegistryInterface $doctrine) {
        if(!$this->isCsrfTokenValid('activite_edit', $request->get('token'))) {
            throw new InvalidCsrfTokenException('Invalid CSRF token');
        }
        $donnees['id'] = $request->request->get('id');
        $donnees['nomActivite'] = $request->request->get('nomActivite');
        $donnees['dateCreation'] = $request->request->get('dateCreation');
        $donnees['countInscription'] = $request->request->get('countInscription');
        $donnees['type'] = $request->request->get('type');
        $donnees['localisationId'] = $request->request->get('localisationId');

        $erreurs=array();
        if((! preg_match("/^[A-Za-z ]{2,}/", $donnees['nomActivite'])))
            $erreurs['nomActivite'] = 'Nom composé de 2 lettres minimum';
        $helper = new Helper_date();
        if(! $helper->verifDateFrench($donnees['dateCreation']))
            $erreurs['dateCreation'] = 'Le format d\'un date est jj/mm/aaaa. (jj, mm, aaaa sont des valeurs entières)';
        if(! is_numeric($donnees['countInscription']))
            $erreurs['countInscription'] = 'Saisir une valeur numérique';
        if((! preg_match("/^[A-Za-z ]{2,}/", $donnees['type'])))
            $erreurs['type'] = 'Nom composé de 2 lettres minimum';
        if(! is_numeric($donnees['localisationId']))
            $erreurs['localisationId'] = 'Veuillez saisir une valeur';

        if(! empty($erreurs)) {
            $localisations = $doctrine->getRepository(Localisation::class)->findAll();
            return $this->render('activite/edit.html.twig', ['donnees' => $donnees, 'erreurs' => $erreurs, 'localisations' => $localisations, 'idLocalisation' => $donnees['localisationId']]);
        } else {
            $activite = $doctrine->getRepository(Activite::class)->find($donnees['id']);
            $activite->setNomActivite($donnees['nomActivite']);
            $activite->setDateCreation($helper->dateFrenchToAmerican($donnees['dateCreation']));
            $activite->setCountInscription($donnees['countInscription']);
            $activite->setType($donnees['type']);
            $localisation = $doctrine->getRepository(Localisation::class)->find($donnees['localisationId']);
            $activite->setLocalisationId($localisation);
            $em = $this->getDoctrine()->getManager();
            $em->persist($activite);
            $em->flush();
            return $this->redirectToRoute('activite.index');
        }
    }

    /**
     * @Route("/activite/delete",name="activite.delete")
     * @Method({"DELETE"})
     * @Security("has_role('ROLE_ADMIN')")
     */
    public function deleteActivite(Request $request) {
        if(!$this->isCsrfTokenValid('activite_delete', $request->get('token'))) {
            throw new InvalidCsrfTokenException('Invalid CSRF token');
        }
        $id = $request->request->get('idActivite');
        $em = $this->container->get('doctrine')->getManager();
        $repository = $em->getRepository('App:Activite');
        $activite = $repository->findOneBy(['id' => $id]);
        $em->remove($activite);
        $em->flush();
        return $this->redirectToRoute('activite.index');
    }
}
