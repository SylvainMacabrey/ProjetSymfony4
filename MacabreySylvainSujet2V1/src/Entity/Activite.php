<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints\Date;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity(repositoryClass="App\Repository\ActiviteRepository")
 * @ORM\Table(name="activites")
 */
class Activite
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     * @Assert\NotBlank()
     * @Assert\Length(min=2, minMessage = "Le nom de l'activité doit être composé de {{ limit }} caractères minimum")
     * @ORM\Column(type="string", length=50)
     */
    private $nomActivite;

    /**
     * @var date
     * @Assert\NotBlank()
     * @Assert\Length(min=2, minMessage = "Le nom de l'activité doit être composé de {{ limit }} caractères minimum")
     * @ORM\Column(type="date", length=255)
     */
    private $dateCreation;

    /**
     * @Assert\NotBlank()
     * @Assert\Type(type="numeric",message =  "La valeur {{ value }} n'est pas valide, le type est {{ type }} ")
     * @ORM\Column(type="decimal", precision=5, scale=2)
     */
    private $countInscription;

    /**
     * @Assert\NotBlank()
     * @Assert\Length(min=2, minMessage = "Le nom de l'activité doit être composé de {{ limit }} caractères minimum")
     * @ORM\Column(type="string", length=20)
     */
    private $type;

    /**
     * @Assert\NotBlank()
     * @Assert\Type(type="numeric",message =  "La valeur {{ value }} n'est pas valide, le type est {{ type }} ")
     * @ORM\ManyToOne(targetEntity="Localisation")
     * @ORM\JoinColumn(name="localisationId", referencedColumnName="id")
     */
    private $localisationId;

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
    public function getNomActivite()
    {
        return $this->nomActivite;
    }

    /**
     * @param mixed $nomActivite
     */
    public function setNomActivite($nomActivite)
    {
        $this->nomActivite = $nomActivite;
    }

    /**
     * @return mixed
     */
    public function getDateCreation()
    {
        return $this->dateCreation;
    }

    /**
     * @param mixed $dateCreation
     */
    public function setDateCreation($dateCreation)
    {
        $this->dateCreation = date_create_from_format('Y-m-d', $dateCreation);
    }

    /**
     * @return mixed
     */
    public function getCountInscription()
    {
        return $this->countInscription;
    }

    /**
     * @param mixed $countInscription
     */
    public function setCountInscription($countInscription)
    {
        $this->countInscription = $countInscription;
    }

    /**
     * @return mixed
     */
    public function getType()
    {
        return $this->type;
    }

    /**
     * @param mixed $type
     */
    public function setType($type)
    {
        $this->type = $type;
    }

    /**
     * @return mixed
     */
    public function getLocalisationId()
    {
        return $this->localisationId;
    }

    /**
     * @param mixed $localisationId
     */
    public function setLocalisationId($localisationId)
    {
        $this->localisationId = $localisationId;
    }

}
