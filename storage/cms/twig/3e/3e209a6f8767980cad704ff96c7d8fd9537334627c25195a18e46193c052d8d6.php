<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* /home/g8g5jo07hdpe/public_html/themes/pharma/partials/footer.htm */
class __TwigTemplate_0d44839cab4d2c78ff5f7f20f68007fded80232c31808a98203c6a712b9fb393 extends \Twig\Template
{
    private $source;

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        // line 1
        echo "<!-- <footer>
    <div class=\"foot-top\">
        <div class=\"container\">
            <ul class=\"direct-link no-type\">
                <li><a href=\"";
        // line 5
        echo url("contact-us");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Contact us"]);
        echo "</span></a></li>
            </ul>
        </div>
    </div>
    <div class=\"foot-btm\">
        <div class=\"container\">
            <p>
                <span>&copy; 2013-<script type=\"text/javascript\">var date = new Date(); document.write(date.getFullYear());</script> CLOUD LLC. </span>
                <span>ALL RIGHTS RESERVED.</span>
                <span>Company rules. Powered by <a href=\"\" target=\"_blank\">Cloud Group</a></span>
            </p>
        </div>
    </div>
</footer> -->

";
        // line 20
        $context['__cms_content_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->contentFunction("footer.htm"        , $context['__cms_content_params']        );
        unset($context['__cms_content_params']);
    }

    public function getTemplateName()
    {
        return "/home/g8g5jo07hdpe/public_html/themes/pharma/partials/footer.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  61 => 20,  41 => 5,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!-- <footer>
    <div class=\"foot-top\">
        <div class=\"container\">
            <ul class=\"direct-link no-type\">
                <li><a href=\"{{ url('contact-us') }}\"><span>{{ 'Contact us'|_ }}</span></a></li>
            </ul>
        </div>
    </div>
    <div class=\"foot-btm\">
        <div class=\"container\">
            <p>
                <span>&copy; 2013-<script type=\"text/javascript\">var date = new Date(); document.write(date.getFullYear());</script> CLOUD LLC. </span>
                <span>ALL RIGHTS RESERVED.</span>
                <span>Company rules. Powered by <a href=\"\" target=\"_blank\">Cloud Group</a></span>
            </p>
        </div>
    </div>
</footer> -->

{% content 'footer.htm' %}", "/home/g8g5jo07hdpe/public_html/themes/pharma/partials/footer.htm", "");
    }
}
