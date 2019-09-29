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

/* /home/g8g5jo07hdpe/public_html/themes/pharma/partials/scroll.htm */
class __TwigTemplate_3910019e64593485229e9c6e3dcf6722a57f5e854442a908a860734babad0c0f extends \Twig\Template
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
        echo "<div class=\"scroll\">
    <div class=\"scroll-box\">
        <a href=\"javascript:;\" id=\"scroll-down\">
            <img src=\"";
        // line 4
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/g.png");
        echo "\">
            <span>";
        // line 5
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["More About Us"]);
        echo "</span>
            <i><img src=\"";
        // line 6
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/arr_down.png");
        echo "\"></i>
        </a>
       ";
        // line 8
        $context['__cms_content_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->contentFunction("scroll.htm"        , $context['__cms_content_params']        );
        unset($context['__cms_content_params']);
        // line 9
        echo "    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "/home/g8g5jo07hdpe/public_html/themes/pharma/partials/scroll.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  57 => 9,  53 => 8,  48 => 6,  44 => 5,  40 => 4,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"scroll\">
    <div class=\"scroll-box\">
        <a href=\"javascript:;\" id=\"scroll-down\">
            <img src=\"{{ 'assets/images/g.png'|theme }}\">
            <span>{{ 'More About Us'|_ }}</span>
            <i><img src=\"{{ 'assets/images/arr_down.png'|theme }}\"></i>
        </a>
       {% content 'scroll.htm' %}
    </div>
</div>", "/home/g8g5jo07hdpe/public_html/themes/pharma/partials/scroll.htm", "");
    }
}
