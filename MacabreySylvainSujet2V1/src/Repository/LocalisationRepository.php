<?php

namespace App\Repository;

use App\Entity\Localisation;
use App\Entity\Activite;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\DBAL\DBALException;
use Symfony\Bridge\Doctrine\RegistryInterface;

class LocalisationRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Localisation::class);
    }

    /*
    public function findBySomething($value) {
        return $this->createQueryBuilder('l')
            ->where('l.something = :value')->setParameter('value', $value)
            ->orderBy('l.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    public function getLocalisations() {
        $requeteSQL = "SELECT l.nom_lieu, COUNT(a.localisationId) AS countId
                       FROM activites as a
                       INNER JOIN localisations as l
                       WHERE l.id = a.localisationId
                       GROUP BY a.localisationId";

        try {
            $stmt = $this->getEntityManager()->getConnection()->prepare($requeteSQL);
            $stmt->execute([]);
        } catch (DBALException $e) {
            echo $e->getMessage();
        }


        return $stmt->fetchAll();
    }
}
