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

/* /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/components/localepicker/default.htm */
class __TwigTemplate_58884ee9c857abdf1f0be3ce2f0a9e9ac6f16c2ea8f26a95b7672cc6120da3ed extends \Twig\Template
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
        echo call_user_func_array($this->env->getFunction('form_open')->getCallable(), ["open"]);
        echo "
    <select name=\"locale\" data-request=\"onSwitchLocale\" class=\"form-control\">
        ";
        // line 3
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["locales"] ?? null));
        foreach ($context['_seq'] as $context["code"] => $context["name"]) {
            // line 4
            echo "            <option value=\"";
            echo twig_escape_filter($this->env, $context["code"], "html", null, true);
            echo "\" ";
            echo ((($context["code"] == ($context["activeLocale"] ?? null))) ? ("selected") : (""));
            echo ">";
            echo twig_escape_filter($this->env, $context["name"], "html", null, true);
            echo "</option>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['code'], $context['name'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 6
        echo "    </select>
";
        // line 7
        echo call_user_func_array($this->env->getFunction('form_close')->getCallable(), ["close"]);
    }

    public function getTemplateName()
    {
        return "/home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/components/localepicker/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  60 => 7,  57 => 6,  44 => 4,  40 => 3,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{{ form_open() }}
    <select name=\"locale\" data-request=\"onSwitchLocale\" class=\"form-control\">
        {% for code, name in locales %}
            <option value=\"{{ code }}\" {{ code == activeLocale ? 'selected' }}>{{ name }}</option>
        {% endfor %}
    </select>
{{ form_close() }}", "/home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/components/localepicker/default.htm", "");
    }
}
