<?php

namespace App\Controller;

use App\Entity\Activite;
use App\Entity\Localisation;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bridge\Doctrine\RegistryInterface;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Form\FormFactoryInterface;
use Symfony\Component\Form\Forms;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Security\Core\Exception\InvalidCsrfTokenException;
use Twig\Environment;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use App\helper\Helper_date;
use App\Form\ActiviteType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;


class ActiviteController extends Controller
{
    /**
     * @Route("/activite ", name="activite.index")
     * @throws \Doctrine\ORM\ORMException
     */
    public function index(RegistryInterface $doctrine) {
        $activites = $doctrine->getRepository(Activite::class)->findAll();
        $doctrine->getEntityManager()->flush();
        return $this->render("activite/index.html.twig", ['activites' => $activites]);
    }

    /**
     * @Route("/activite/add",name="activite.add")
     * @throws \Doctrine\ORM\ORMException
     */
    public function addActivite(Request $request, Environment $twig, RegistryInterface $doctrine, FormFactoryInterface $formFactory) {
        $form = $formFactory->createBuilder(ActiviteType::class)->getForm();
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $activite = $form->getData();
            $doctrine->getEntityManager()->persist($activite);
            $doctrine->getEntityManager()->flush();
            return $this->redirectToRoute('activite.index');
        }
        return new Response($twig->render('activite/add.html.twig', ['form' => $form->createView()]));
    }

    /**
     * @Route("/activite/edit}",name="activite.edit")
     * @throws \Doctrine\ORM\ORMException
     */
    public function editActivite(Request $request, Environment $twig, RegistryInterface $doctrine, FormFactoryInterface $formFactory) {
        $activite = $doctrine->getRepository(Activite::class)->find($request->query->get('id'));
        $form = $formFactory->createBuilder(ActiviteType::class, $activite)->getForm();
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $doctrine->getEntityManager()->flush();
            return $this->redirectToRoute('activite.index');
        }
        return new Response($twig->render('activite/add.html.twig', ['form' => $form->createView()]));
    }

    /**
     * @Route("/activite/delete",name="activite.delete")
     * @Method({"DELETE"})
     */
    public function deleteProduit(Request $request) {
        $id = $request->request->get('idActivite');
        $em = $this->container->get('doctrine')->getManager();
        $repository = $em->getRepository('App:Activite');
        $activite = $repository->findOneBy(['id' => $id]);
        $em->remove($activite);
        $em->flush();
        return $this->redirectToRoute('activite.index');
    }
}
