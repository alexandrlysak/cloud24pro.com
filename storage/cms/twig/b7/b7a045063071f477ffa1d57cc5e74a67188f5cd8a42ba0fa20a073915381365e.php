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

/* /home/g8g5jo07hdpe/public_html/themes/pharma/pages/our-services.htm */
class __TwigTemplate_eafe8dc2744327fe2264d50974d482f4373dc4c3792bb4fbec40149a4f5f86af extends \Twig\Template
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
        // line 3
        $context["imgAssets"] = $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/");
        // line 4
        $context['__cms_content_params'] = [];
        $context['__cms_content_params']['imgAssets'] =         twig_escape_filter($this->env, ($context["imgAssets"] ?? null)        )        ;
        echo $this->env->getExtension('Cms\Twig\Extension')->contentFunction("our-services.htm"        , $context['__cms_content_params']        );
        unset($context['__cms_content_params']);
    }

    public function getTemplateName()
    {
        return "/home/g8g5jo07hdpe/public_html/themes/pharma/pages/our-services.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  45 => 4,  43 => 3,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div style=\"display: none\">{% component 'localePicker' %}</div>

{% set imgAssets = 'assets/images/'|theme %}
{% content 'our-services.htm' imgAssets = imgAssets%}", "/home/g8g5jo07hdpe/public_html/themes/pharma/pages/our-services.htm", "");
    }
}
