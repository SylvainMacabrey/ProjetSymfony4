<?php
/**
 * Created by PhpStorm.
 * User: sylva
 * Date: 11/01/2018
 * Time: 15:50
 */

namespace App\Controller;


use App\Entity\Localisation;
use Symfony\Bridge\Doctrine\RegistryInterface;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;


class LocalisationController extends Controller {

    /**
     * @Route("/localisation", name="localisation.index")
     * @throws \Doctrine\ORM\ORMException
     */
    public function index(RegistryInterface $doctrine) {
        $localisations = $doctrine->getRepository(Localisation::class)->getLocalisations();
        //$localisations = $doctrine->getRepository(Localisation::class)->findAll();
        $doctrine->getEntityManager()->flush();
        return $this->render("localisation/index.html.twig", ['lieus' => $localisations]);
    }

}