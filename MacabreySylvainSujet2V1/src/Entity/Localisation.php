<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\LocalisationRepository")
 * @ORM\Table(name="localisations")
 */
class Localisation
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $nomLieu;

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getNomLieu()
    {
        return $this->nomLieu;
    }

    /**
     * @param mixed $nomLieu
     */
    public function setNomLieu($nomLieu)
    {
        $this->nomLieu = $nomLieu;
    }

}
