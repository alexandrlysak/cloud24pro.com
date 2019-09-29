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

/* /home/g8g5jo07hdpe/public_html/themes/pharma/pages/home.htm */
class __TwigTemplate_9db985c08864f073d56824d45bcf024513b617e940608ad0e31e1fd620dfee7f extends \Twig\Template
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
        echo "<div style=\"display: none\">";
        $context['__cms_component_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->componentFunction("localePicker"        , $context['__cms_component_params']        );
        unset($context['__cms_component_params']);
        echo "</div>
";
        // line 2
        $context["imgAssets"] = $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/");
        // line 3
        echo "
<div id=\"index-content\">

    ";
        // line 6
        $context['__cms_content_params'] = [];
        $context['__cms_content_params']['imgAssets'] =         twig_escape_filter($this->env, ($context["imgAssets"] ?? null)        )        ;
        echo $this->env->getExtension('Cms\Twig\Extension')->contentFunction("home-page-about-us.htm"        , $context['__cms_content_params']        );
        unset($context['__cms_content_params']);
        // line 7
        echo "    
    ";
        // line 8
        $context['__cms_content_params'] = [];
        $context['__cms_content_params']['imgAssets'] =         twig_escape_filter($this->env, ($context["imgAssets"] ?? null)        )        ;
        echo $this->env->getExtension('Cms\Twig\Extension')->contentFunction("home-page-our-businesses.htm"        , $context['__cms_content_params']        );
        unset($context['__cms_content_params']);
        // line 9
        echo "    
    ";
        // line 10
        $context['__cms_content_params'] = [];
        $context['__cms_content_params']['imgAssets'] =         twig_escape_filter($this->env, ($context["imgAssets"] ?? null)        )        ;
        echo $this->env->getExtension('Cms\Twig\Extension')->contentFunction("home-page-our-products.htm"        , $context['__cms_content_params']        );
        unset($context['__cms_content_params']);
        // line 11
        echo "    
    ";
        // line 12
        $context['__cms_content_params'] = [];
        $context['__cms_content_params']['imgAssets'] =         twig_escape_filter($this->env, ($context["imgAssets"] ?? null)        )        ;
        echo $this->env->getExtension('Cms\Twig\Extension')->contentFunction("home-page-research-and-development.htm"        , $context['__cms_content_params']        );
        unset($context['__cms_content_params']);
        // line 13
        echo "    
    ";
        // line 14
        $context['__cms_content_params'] = [];
        $context['__cms_content_params']['imgAssets'] =         twig_escape_filter($this->env, ($context["imgAssets"] ?? null)        )        ;
        echo $this->env->getExtension('Cms\Twig\Extension')->contentFunction("home-page-corporate-social-responsibility.htm"        , $context['__cms_content_params']        );
        unset($context['__cms_content_params']);
        // line 15
        echo "
</div>";
    }

    public function getTemplateName()
    {
        return "/home/g8g5jo07hdpe/public_html/themes/pharma/pages/home.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  86 => 15,  81 => 14,  78 => 13,  73 => 12,  70 => 11,  65 => 10,  62 => 9,  57 => 8,  54 => 7,  49 => 6,  44 => 3,  42 => 2,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div style=\"display: none\">{% component 'localePicker' %}</div>
{% set imgAssets = 'assets/images/'|theme %}

<div id=\"index-content\">

    {% content 'home-page-about-us.htm' imgAssets = imgAssets %}
    
    {% content 'home-page-our-businesses.htm' imgAssets = imgAssets %}
    
    {% content 'home-page-our-products.htm' imgAssets = imgAssets %}
    
    {% content 'home-page-research-and-development.htm' imgAssets = imgAssets %}
    
    {% content 'home-page-corporate-social-responsibility.htm' imgAssets = imgAssets %}

</div>", "/home/g8g5jo07hdpe/public_html/themes/pharma/pages/home.htm", "");
    }
}
