<?php

namespace ShareMyDocs\PlatformBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class PlatformController extends Controller
{
    public function homeAction()
    {
        return $this->render('ShareMyDocsPlatformBundle:Platform:home.html.twig');
    }
}
