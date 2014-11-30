<?php

namespace ShareMyDocs\UserBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class ShareMyDocsUserBundle extends Bundle
{
	public function getParent()
  {
    return 'FOSUserBundle';
  }
}
