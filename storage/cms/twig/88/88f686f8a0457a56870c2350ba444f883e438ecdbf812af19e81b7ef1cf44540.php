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

/* /home/g8g5jo07hdpe/public_html/themes/pharma/layouts/page.htm */
class __TwigTemplate_e45942891e5cf7e4c455f77adeea55038dd5d01b59304f518016ef858ce4a7bc extends \Twig\Template
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
        echo "<!DOCTYPE html>
<html>
<head>
    <meta charset=\"utf-8\">
    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\">
    
    <title>";
        // line 8
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), [twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 8), "title", [], "any", false, false, false, 8)]);
        echo "</title>
    
    <meta name=\"description\" content=\"";
        // line 10
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), [twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 10), "meta_description", [], "any", false, false, false, 10)]);
        echo "\">
    <meta name=\"title\" content=\"";
        // line 11
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), [twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 11), "meta_title", [], "any", false, false, false, 11)]);
        echo "\">
    
    <link rel=\"shortcut icon\" href=\"";
        // line 13
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/favicon.png");
        echo "\">
    
    <link rel=\"stylesheet\" href=\"";
        // line 15
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/css/public.css");
        echo "\" />
    <link rel=\"stylesheet\" href=\"";
        // line 16
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/css/screen.css");
        echo "\" />
    <link rel=\"stylesheet\" href=\"";
        // line 17
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/css/font_831831_iwffy4dtf9f.css");
        echo "\" />
    
    <!-- <link rel=\"stylesheet\" href=\"";
        // line 19
        echo $this->extensions['Cms\Twig\Extension']->themeFilter([0 => "assets/css/public.css", 1 => "assets/css/screen.css", 2 => "assets/css/font_831831_iwffy4dtf9f.css"]);
        // line 23
        echo "\"/> -->

    ";
        // line 25
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('css');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('styles');
        // line 26
        echo "
    <script src=\"";
        // line 27
        echo $this->extensions['Cms\Twig\Extension']->themeFilter([0 => "assets/js/jquery-2.2.1.min.js", 1 => "assets/js/modernizr-2.8.3.min.js", 2 => "assets/js/easyXDM-2.4.19.3.min.js"]);
        // line 31
        echo "\"></script>
    
    <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
          <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>
          <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>
    <![endif]-->
    <script>
        document.addEventListener(\"touchstart\", function() {},false);
        function MM_jumpMenu(targ,selObj,restore){ //v3.0
          eval(targ+\".location='\"+selObj.options[selObj.selectedIndex].value+\"'\");
          if (restore) selObj.selectedIndex=0;
        }
        \$(function(){
            console.log(\$(window).width());
        });

    </script>


</head>
<body id=\"ver-en\">

    ";
        // line 54
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("header"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 55
        echo "    
    
    ";
        // line 57
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFunction();
        // line 58
        echo "   
    ";
        // line 59
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("footer"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 60
        echo "    
    ";
        // line 61
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("phone"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 62
        echo "
    <script src=\"";
        // line 63
        echo $this->extensions['Cms\Twig\Extension']->themeFilter([0 => "assets/js/jquery.easing.min.js", 1 => "assets/js/jquery.matchHeight-min.js", 2 => "assets/js/slick.min.js", 3 => "assets/js/public.js"]);
        // line 68
        echo "\"></script>

    <script>
        \$('.year-wrap').hover(function(){

            \$(this).children('.year-box').show();
        },function(){
            \$(this).children('.year-box').hide();
        });
        \$('.year-btn').on('click',function(){
            //console.log('.'+\$(this).data('parent')+' .data-list');
            \$('.'+\$(this).data('parent')+' .data-list').hide();
            \$('.'+\$(this).data('parent')+' .data-list[data-year='+\$(this).data('year')+']').show();
            \$('.'+\$(this).data('parent')+' .current-year').html(\$(this).data('year'));
        });

        \$('.year-btn[data-select=\"selected\"]').each(function(){
            //console.log(\$(this));
            \$(this).trigger('click');
        });

    </script>
    
     ";
        // line 91
        $_minify = System\Classes\CombineAssets::instance()->useMinify;
        if ($_minify) {
            echo '<script src="'. Request::getBasePath()
                    .'/modules/system/assets/js/framework.combined-min.js"></script>'.PHP_EOL;
        }
        else {
            echo '<script src="'. Request::getBasePath()
                    .'/modules/system/assets/js/framework.js"></script>'.PHP_EOL;
            echo '<script src="'. Request::getBasePath()
                    .'/modules/system/assets/js/framework.extras.js"></script>'.PHP_EOL;
        }
        echo '<link rel="stylesheet" property="stylesheet" href="'. Request::getBasePath()
                    .'/modules/system/assets/css/framework.extras'.($_minify ? '-min' : '').'.css">'.PHP_EOL;
        unset($_minify);
        // line 92
        echo "    ";
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('js');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('scripts');
        // line 93
        echo "</body>
</html>";
    }

    public function getTemplateName()
    {
        return "/home/g8g5jo07hdpe/public_html/themes/pharma/layouts/page.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  188 => 93,  184 => 92,  169 => 91,  144 => 68,  142 => 63,  139 => 62,  135 => 61,  132 => 60,  128 => 59,  125 => 58,  123 => 57,  119 => 55,  115 => 54,  90 => 31,  88 => 27,  85 => 26,  82 => 25,  78 => 23,  76 => 19,  71 => 17,  67 => 16,  63 => 15,  58 => 13,  53 => 11,  49 => 10,  44 => 8,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!DOCTYPE html>
<html>
<head>
    <meta charset=\"utf-8\">
    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\">
    
    <title>{{ this.page.title|_ }}</title>
    
    <meta name=\"description\" content=\"{{ this.page.meta_description|_ }}\">
    <meta name=\"title\" content=\"{{ this.page.meta_title|_ }}\">
    
    <link rel=\"shortcut icon\" href=\"{{ 'assets/images/favicon.png'|theme }}\">
    
    <link rel=\"stylesheet\" href=\"{{'assets/css/public.css'|theme}}\" />
    <link rel=\"stylesheet\" href=\"{{'assets/css/screen.css'|theme}}\" />
    <link rel=\"stylesheet\" href=\"{{'assets/css/font_831831_iwffy4dtf9f.css'|theme}}\" />
    
    <!-- <link rel=\"stylesheet\" href=\"{{ [
    'assets/css/public.css',
    'assets/css/screen.css',
    'assets/css/font_831831_iwffy4dtf9f.css'
    ]|theme }}\"/> -->

    {% styles %}

    <script src=\"{{ [
    'assets/js/jquery-2.2.1.min.js',
    'assets/js/modernizr-2.8.3.min.js',
    'assets/js/easyXDM-2.4.19.3.min.js'
    ]|theme }}\"></script>
    
    <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
          <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>
          <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>
    <![endif]-->
    <script>
        document.addEventListener(\"touchstart\", function() {},false);
        function MM_jumpMenu(targ,selObj,restore){ //v3.0
          eval(targ+\".location='\"+selObj.options[selObj.selectedIndex].value+\"'\");
          if (restore) selObj.selectedIndex=0;
        }
        \$(function(){
            console.log(\$(window).width());
        });

    </script>


</head>
<body id=\"ver-en\">

    {% partial \"header\" %}
    
    
    {% page %}
   
    {% partial \"footer\" %}
    
    {% partial \"phone\" %}

    <script src=\"{{ [
    'assets/js/jquery.easing.min.js',
    'assets/js/jquery.matchHeight-min.js',
    'assets/js/slick.min.js',
    'assets/js/public.js'        
    ]|theme }}\"></script>

    <script>
        \$('.year-wrap').hover(function(){

            \$(this).children('.year-box').show();
        },function(){
            \$(this).children('.year-box').hide();
        });
        \$('.year-btn').on('click',function(){
            //console.log('.'+\$(this).data('parent')+' .data-list');
            \$('.'+\$(this).data('parent')+' .data-list').hide();
            \$('.'+\$(this).data('parent')+' .data-list[data-year='+\$(this).data('year')+']').show();
            \$('.'+\$(this).data('parent')+' .current-year').html(\$(this).data('year'));
        });

        \$('.year-btn[data-select=\"selected\"]').each(function(){
            //console.log(\$(this));
            \$(this).trigger('click');
        });

    </script>
    
     {% framework extras %}
    {% scripts %}
</body>
</html>", "/home/g8g5jo07hdpe/public_html/themes/pharma/layouts/page.htm", "");
    }
}
