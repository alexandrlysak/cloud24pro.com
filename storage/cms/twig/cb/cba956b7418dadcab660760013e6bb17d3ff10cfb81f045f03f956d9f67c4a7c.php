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

/* /home/g8g5jo07hdpe/public_html/themes/pharma/pages/kontakty.htm */
class __TwigTemplate_b5569c3154c38acbfc25f94510a37f6ed133e9d0163868c8db968851a732af17 extends \Twig\Template
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


<div class=\"inner-banner contact-us\">
  <div class=\"inner-banner-tit\"> <span>";
        // line 5
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Contact us"]);
        echo "</span> </div>
</div>
<article>
  <div class=\"container contact-art\">
    <div class=\"contact-wrap clearfix\">
      <div class=\"contact-left\">
      
      
         ";
        // line 13
        $context['__cms_content_params'] = [];
        $context['__cms_content_params']['imgAssets'] =         twig_escape_filter($this->env, ($context["imgAssets"] ?? null)        )        ;
        echo $this->env->getExtension('Cms\Twig\Extension')->contentFunction("contact-left.htm"        , $context['__cms_content_params']        );
        unset($context['__cms_content_params']);
        // line 14
        echo "         
      </div>
      <div class=\"contact-right\">
          ";
        // line 17
        $context['__cms_content_params'] = [];
        $context['__cms_content_params']['imgAssets'] =         twig_escape_filter($this->env, ($context["imgAssets"] ?? null)        )        ;
        echo $this->env->getExtension('Cms\Twig\Extension')->contentFunction("contact-right.htm"        , $context['__cms_content_params']        );
        unset($context['__cms_content_params']);
        // line 18
        echo "        
        <div class=\"form\">
          <form id=\"form\">
            <div class=\"i-group\">
              <label for=\"name\">Name:</label>
              <input type=\"text\" class=\"name\" name=\"name\" value=\"Enter Name\">
            </div>
            <div class=\"i-group\">
              <label for=\"email\">Email:</label>
              <input type=\"text\" class=\"email\" name=\"email\" value=\"Enter Email\">
            </div>
            <div class=\"i-group\">
              <label for=\"msg\">Message:</label>
              <textarea class=\"msg\" value=\"Enter Your Message\">Enter Your Message</textarea>
            </div>
            <div class=\"submit-btn\">
              <input class=\"submit\" type=\"submit\" value=\"SUBMIT\">
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</article>";
    }

    public function getTemplateName()
    {
        return "/home/g8g5jo07hdpe/public_html/themes/pharma/pages/kontakty.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  71 => 18,  66 => 17,  61 => 14,  56 => 13,  45 => 5,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div style=\"display: none\">{% component 'localePicker' %}</div>


<div class=\"inner-banner contact-us\">
  <div class=\"inner-banner-tit\"> <span>{{ 'Contact us'|_ }}</span> </div>
</div>
<article>
  <div class=\"container contact-art\">
    <div class=\"contact-wrap clearfix\">
      <div class=\"contact-left\">
      
      
         {% content 'contact-left.htm' imgAssets = imgAssets%}
         
      </div>
      <div class=\"contact-right\">
          {% content 'contact-right.htm' imgAssets = imgAssets%}
        
        <div class=\"form\">
          <form id=\"form\">
            <div class=\"i-group\">
              <label for=\"name\">Name:</label>
              <input type=\"text\" class=\"name\" name=\"name\" value=\"Enter Name\">
            </div>
            <div class=\"i-group\">
              <label for=\"email\">Email:</label>
              <input type=\"text\" class=\"email\" name=\"email\" value=\"Enter Email\">
            </div>
            <div class=\"i-group\">
              <label for=\"msg\">Message:</label>
              <textarea class=\"msg\" value=\"Enter Your Message\">Enter Your Message</textarea>
            </div>
            <div class=\"submit-btn\">
              <input class=\"submit\" type=\"submit\" value=\"SUBMIT\">
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</article>", "/home/g8g5jo07hdpe/public_html/themes/pharma/pages/kontakty.htm", "");
    }
}
