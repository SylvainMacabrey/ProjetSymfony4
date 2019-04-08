<?php

namespace App\Form;

use App\Entity\Activite;
use App\Entity\Localisation;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ActiviteType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nomActivite', TextType::class, [
                'label' => 'Nom de l\'activité'
            ])
            ->add('dateCreation', DateType::class, [
                'label' => 'Date de création'
            ])
            ->add('countInscription', NumberType::class, [
                'label' => 'Nombre d\' inscription'
            ])
            ->add('type', TextType::class, [
                'label' => 'Type'
            ])
            ->add('localisationId', EntityType::class, array(
                'class' => Localisation::class,
                'choice_label' => 'nomLieu'
            ), [
                'label' => 'Localisation'
            ])
            ->add('submit', SubmitType::class)
            ->getForm();
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            // uncomment if you want to bind to a class
            'data_class' => Activite::class,
        ]);
    }
}
