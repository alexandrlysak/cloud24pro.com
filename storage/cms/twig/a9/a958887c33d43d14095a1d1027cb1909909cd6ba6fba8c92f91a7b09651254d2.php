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

/* /home/g8g5jo07hdpe/public_html/themes/pharma/partials/header.htm */
class __TwigTemplate_6eed7dba4ea7b35651c36775f8e5d54e056cf29d1469d2e2a2171fcf6dfb4eaa extends \Twig\Template
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
        echo "<header>
    <div class=\"container\">
        <div class=\"head-content clearfix\">
            <div class=\"h-left\">
                <a class=\"logo\" href=\"";
        // line 5
        echo url("/");
        echo "\"><img src=\"";
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/logo.png");
        echo "\"></a>
            </div>
            <div class=\"h-right\">
                <div class=\"h-right-top clearfix\">
                    
                   <!--  ";
        // line 10
        $context['__cms_component_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->componentFunction("localePicker"        , $context['__cms_component_params']        );
        unset($context['__cms_component_params']);
        echo " -->
                    <ul class=\"lang-list no-type clearfix\">
                        <li";
        // line 12
        if ((($context["activeLocale"] ?? null) == "en")) {
            echo " class=\"active\"";
        }
        echo "><a href=\"#\" data-request=\"onSwitchLocale\" data-request-data=\"locale: 'en'\"><span>ENG</span></a><i>|</i></li>
                        <li";
        // line 13
        if ((($context["activeLocale"] ?? null) == "ru")) {
            echo " class=\"active\"";
        }
        echo "><a href=\"#\" data-request=\"onSwitchLocale\" data-request-data=\"locale: 'ru'\"><span>RU</span></a><i>|</i></li>
                        <li";
        // line 14
        if ((($context["activeLocale"] ?? null) == "ch")) {
            echo " class=\"active\"";
        }
        echo "><a href=\"#\" data-request=\"onSwitchLocale\" data-request-data=\"locale: 'ch'\"><span>CH</span></a></li>
                    </ul>

                   <!--  <p>
                       Switch language to:
                       <a href=\"#\" data-request=\"onSwitchLocale\" data-request-data=\"locale: 'en'\">English</a>,
                       <a href=\"#\" data-request=\"onSwitchLocale\" data-request-data=\"locale: 'ru'\">Russian</a>
                   </p> -->

                </div>
                
                <div class=\"h-right-btm\">
                    
                    <nav>
                        <ul class=\"nav-list no-type clearfix\">
                            
                            <li ";
        // line 30
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 30), "id", [], "any", false, false, false, 30) == "home")) {
            echo " class=\"active\" ";
        }
        echo "><a href=\"";
        echo url("/");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Home"]);
        echo "</span></a></li>
                            
                            <li ";
        // line 32
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 32), "id", [], "any", false, false, false, 32) == "our-company")) {
            echo " class=\"active\" ";
        }
        echo "><a href=\"";
        echo url("/our-company");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Our company"]);
        echo "</span></a>
                                <div class=\"sub-nav\">
                                    <dl>
                                        <dd><a href=\"";
        // line 35
        echo url("/our-company#our-profile");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Our Profile"]);
        echo "</span></a></dd>
                                        <dd><a href=\"";
        // line 36
        echo url("/our-company#our-vision-and-mission");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Our Vision & Mission"]);
        echo "</span></a></dd>
                                        <dd><a href=\"";
        // line 37
        echo url("/our-company#our-values");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Our Values"]);
        echo "</span></a></dd>
                                        <dd><a href=\"";
        // line 38
        echo url("/our-company#our-culture");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Our Culture"]);
        echo "</span></a></dd>
                                    </dl>
                                </div>
                            </li>
                            
                            <li ";
        // line 43
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 43), "id", [], "any", false, false, false, 43) == "our-businesses")) {
            echo " class=\"active\" ";
        }
        echo "><a href=\"";
        echo url("our-businesses");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Our businesses"]);
        echo "</span></a>
                                <div class=\"sub-nav\">
                                    <dl>
                                       <!--  <dd><a href=\"";
        // line 46
        echo url("/our-businesses#generics");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Generics"]);
        echo "</span></a></dd> -->
                                        <dd><a href=\"";
        // line 47
        echo url("/our-businesses#internationalCooperation");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Interntational cooperation"]);
        echo "</span></a></dd>
                                        <!-- <dd><a href=\"";
        // line 48
        echo url("/our-businesses#proprietary-medicines");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Proprietary Medicines"]);
        echo "</span></a></dd> -->
                                        <!-- <dd><a href=\"";
        // line 49
        echo url("/our-businesses#Biosimilars");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Biosimilars, Genomics and Clinical Diagnostics"]);
        echo "</span></a></dd>  -->
                                        <dd><a href=\"";
        // line 50
        echo url("/our-businesses#regional-presence");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Regional Presence"]);
        echo "</span></a></dd>
                                    </dl>
                                </div>
                            </li>
                            <li ";
        // line 54
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 54), "id", [], "any", false, false, false, 54) == "our-services")) {
            echo " class=\"active\" ";
        }
        echo ">
                                <a href=\"";
        // line 55
        echo url("/our-services");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Our services"]);
        echo "</span></a>
                                <div class=\"sub-nav\">
                                    <dl>
                                        <dd><a href=\"";
        // line 58
        echo url("/our-services#laboratoryResearch");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Laboratory research"]);
        echo " </span></a></dd>
                                        <dd><a href=\"";
        // line 59
        echo url("/our-services#certificationOfProducts");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Certification of products"]);
        echo "</span></a></dd>
                                        <dd><a href=\"";
        // line 60
        echo url("/our-services#technicalConditions");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Technical conditions"]);
        echo "</span></a></dd>
                                        <dd><a href=\"";
        // line 61
        echo url("/our-services#voluntaryCertification");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Voluntary certification"]);
        echo "</span></a></dd>
                                    </dl>
                                </div>
                            </li>
                            <!-- <li ";
        // line 65
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 65), "id", [], "any", false, false, false, 65) == "our-responsibilities")) {
            echo " class=\"active\" ";
        }
        echo ">
                                <a href=\"";
        // line 66
        echo url("/our-responsibilities");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Our Responsibilities"]);
        echo "</span></a>
                                <div class=\"sub-nav\">
                                   <dl>
                                       <dd><a href=\"";
        // line 69
        echo url("/our-responsibilities#ourBelief");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Our Belief"]);
        echo "</span></a></dd>
                                       <dd><a href=\"";
        // line 70
        echo url("/our-responsibilities#ourCommitment");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Our Commitment"]);
        echo "</span></a></dd>
                                   </dl>
                                </div>
                            </li> -->
                           
                            
                            <li ";
        // line 76
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 76), "id", [], "any", false, false, false, 76) == "management-system-certification")) {
            echo " class=\"active\" ";
        }
        echo ">
                                <a href=\"";
        // line 77
        echo url("/management-system-certification");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Management System Certification"]);
        echo "</span></a>
                                <div class=\"sub-nav\">
                                    <dl>
                                        <dd><a href=\"";
        // line 80
        echo url("/management-system-certification#haccp");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["HACCP SYSTEM"]);
        echo " </span></a></dd>
                                        <dd><a href=\"";
        // line 81
        echo url("/management-system-certification#iso15189");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["ISO 15189"]);
        echo "</span></a></dd>
                                        <dd><a href=\"";
        // line 82
        echo url("/management-system-certification#iso9001");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["ISO 9001"]);
        echo "</span></a></dd>
                                        <dd><a href=\"";
        // line 83
        echo url("/management-system-certification#iso14001");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["ISO 14001"]);
        echo "</span></a></dd>
                                    </dl>
                                </div>
                            </li>
                            
                             <li ";
        // line 88
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 88), "id", [], "any", false, false, false, 88) == "careers")) {
            echo " class=\"active\" ";
        }
        echo ">
                                <a href=\"";
        // line 89
        echo url("/careers");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Careers"]);
        echo "</span></a>
                            </li>
                            
                            <li ";
        // line 92
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 92), "id", [], "any", false, false, false, 92) == "contact-us")) {
            echo " class=\"active\" ";
        }
        echo ">
                                <a href=\"";
        // line 93
        echo url("contact-us");
        echo "\"><span>";
        echo call_user_func_array($this->env->getFilter('_')->getCallable(), ["Contact us"]);
        echo "</span></a>
                            </li>
                             
                               <!--  <li class=\"\"><a href=\"our-rd.php\"><span>Our R&D</span></a>
                                   <div class=\"sub-nav\">
                                       <dl>
                                           <dd><a href=\"our-rd.php#leadership-and-focus\"><span>Dedication and Focus</span></a></dd>
                                           <dd><a href=\"our-rd.php#collaborations\"><span>Collaborations</span></a></dd>
                                           <dd><a href=\"our-rd.php#projects-and-awards\"><span>Projects and Awards</span></a></dd>
                                           <dd><a href=\"our-rd.php#jacobson-research-laboratory\"><span>Jacobson Research Laboratory</span></a></dd>
                                       </dl>
                                   </div>
                               </li>
                               
                               <li class=\"\"><a href=\"inverstor-relations.php\"><span>Investor <i></i>Relations</span></a>
                                   <div class=\"sub-nav\">
                                       <dl>
                                           <dd><a href=\"inverstor-relations.php#corporate-information\"><span>Corporate Information</span></a></dd>
                                           <dd><a href=\"inverstor-relations.php#corporate-governance\"><span>Corporate Governance</span></a></dd>
                                           <dd><a href=\"inverstor-relations.php#financial-highlights\"><span>Financial Highlights</span></a></dd>
                                           <dd><a href=\"inverstor-relations.php#financial-reports\"><span>Financial Reports</span></a></dd>
                                           <dd><a href=\"inverstor-relations.php#announcement-and-circulars\"><span>Announcement & Circulars</span></a></dd>
                                           <dd><a href=\"inverstor-relations.php#press-releases-and-presentations\"><span>Press Releases & Presentations</span></a></dd>
                                           <dd><a href=\"inverstor-relations.php#stock-information\"><span>Stock Information</span></a></dd>
                                           <dd><a href=\"inverstor-calendar.php\"><span>Investor Calendar</span></a></dd>
                                           <dd><a href=\"inverstor-share.php\"><span>Replace of Lost Share Certificates</span></a></dd>
                                           <dd><a href=\"inverstor-policy.php\"><span>Shareholders Communication Policy</span></a></dd>
                                           <dd><a href=\"inverstor-contact.php\"><span>IR Contact</span></a></dd>
                                           <dd><a href=\"inverstor-email.php\"><span>Email Notice</span></a></dd>
                                       </dl>
                                   </div>
                               </li>
                               <li class=\"\"><a href=\"careers.php\"><span>Careers</span></a>
                                   <div class=\"sub-nav\">
                                       <dl>
                                           <dd><a href=\"careers.php#why-jacobson\"><span>Why Jacobson</span></a></dd>
                                           <dd><a href=\"careers.php#join-us\"><span>Join Us</span></a></dd>
                                       </dl>
                                   </div>
                               </li>
                               <li class=\"\"><a href=\"contact-us.php\"><span>Contact Us</span></a>
                               <div class=\"sub-nav\">
                                       <dl>
                                           <dd><a href=\"contact-us.php#hk\"><span>Hong Kong</span></a></dd>
                                           <dd><a href=\"contact-us.php#macau\"><span>Macau</span></a></dd>
                                           <dd><a href=\"contact-us.php#china\"><span>China</span></a></dd>
                                           <dd><a href=\"contact-us.php#taiwan\"><span>Taiwan</span></a></dd>  
                                           <dd><a href=\"contact-us.php#singapore\"><span>Singapore</span></a></dd>  
                                       </dl>
                                   </div>
                               </li> -->
                            </ul>
                        </nav>                    
                </div>
                <a id=\"menu\" href=\"javascript:;\">
                    <span></span>
                    <span></span>
                    <span></span>
                </a>
            </div>
        </div>
    </header>";
    }

    public function getTemplateName()
    {
        return "/home/g8g5jo07hdpe/public_html/themes/pharma/partials/header.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  321 => 93,  315 => 92,  307 => 89,  301 => 88,  291 => 83,  285 => 82,  279 => 81,  273 => 80,  265 => 77,  259 => 76,  248 => 70,  242 => 69,  234 => 66,  228 => 65,  219 => 61,  213 => 60,  207 => 59,  201 => 58,  193 => 55,  187 => 54,  178 => 50,  172 => 49,  166 => 48,  160 => 47,  154 => 46,  142 => 43,  132 => 38,  126 => 37,  120 => 36,  114 => 35,  102 => 32,  91 => 30,  70 => 14,  64 => 13,  58 => 12,  51 => 10,  41 => 5,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<header>
    <div class=\"container\">
        <div class=\"head-content clearfix\">
            <div class=\"h-left\">
                <a class=\"logo\" href=\"{{ url('/') }}\"><img src=\"{{ 'assets/images/logo.png'|theme }}\"></a>
            </div>
            <div class=\"h-right\">
                <div class=\"h-right-top clearfix\">
                    
                   <!--  {% component 'localePicker' %} -->
                    <ul class=\"lang-list no-type clearfix\">
                        <li{% if activeLocale == 'en' %} class=\"active\"{% endif %}><a href=\"#\" data-request=\"onSwitchLocale\" data-request-data=\"locale: 'en'\"><span>ENG</span></a><i>|</i></li>
                        <li{% if activeLocale == 'ru' %} class=\"active\"{% endif %}><a href=\"#\" data-request=\"onSwitchLocale\" data-request-data=\"locale: 'ru'\"><span>RU</span></a><i>|</i></li>
                        <li{% if activeLocale == 'ch' %} class=\"active\"{% endif %}><a href=\"#\" data-request=\"onSwitchLocale\" data-request-data=\"locale: 'ch'\"><span>CH</span></a></li>
                    </ul>

                   <!--  <p>
                       Switch language to:
                       <a href=\"#\" data-request=\"onSwitchLocale\" data-request-data=\"locale: 'en'\">English</a>,
                       <a href=\"#\" data-request=\"onSwitchLocale\" data-request-data=\"locale: 'ru'\">Russian</a>
                   </p> -->

                </div>
                
                <div class=\"h-right-btm\">
                    
                    <nav>
                        <ul class=\"nav-list no-type clearfix\">
                            
                            <li {% if (this.page.id == 'home') %} class=\"active\" {% endif %}><a href=\"{{ url('/') }}\"><span>{{ 'Home'|_ }}</span></a></li>
                            
                            <li {% if (this.page.id == 'our-company') %} class=\"active\" {% endif %}><a href=\"{{ url('/our-company') }}\"><span>{{ 'Our company'|_ }}</span></a>
                                <div class=\"sub-nav\">
                                    <dl>
                                        <dd><a href=\"{{ url('/our-company#our-profile') }}\"><span>{{ 'Our Profile'|_ }}</span></a></dd>
                                        <dd><a href=\"{{ url('/our-company#our-vision-and-mission') }}\"><span>{{ 'Our Vision & Mission'|_ }}</span></a></dd>
                                        <dd><a href=\"{{ url('/our-company#our-values') }}\"><span>{{ 'Our Values'|_ }}</span></a></dd>
                                        <dd><a href=\"{{ url('/our-company#our-culture') }}\"><span>{{ 'Our Culture'|_ }}</span></a></dd>
                                    </dl>
                                </div>
                            </li>
                            
                            <li {% if (this.page.id == 'our-businesses') %} class=\"active\" {% endif %}><a href=\"{{ url('our-businesses') }}\"><span>{{ 'Our businesses'|_ }}</span></a>
                                <div class=\"sub-nav\">
                                    <dl>
                                       <!--  <dd><a href=\"{{ url('/our-businesses#generics') }}\"><span>{{ 'Generics'|_ }}</span></a></dd> -->
                                        <dd><a href=\"{{ url('/our-businesses#internationalCooperation') }}\"><span>{{ 'Interntational cooperation'|_ }}</span></a></dd>
                                        <!-- <dd><a href=\"{{ url('/our-businesses#proprietary-medicines') }}\"><span>{{ 'Proprietary Medicines'|_ }}</span></a></dd> -->
                                        <!-- <dd><a href=\"{{ url('/our-businesses#Biosimilars') }}\"><span>{{ 'Biosimilars, Genomics and Clinical Diagnostics'|_ }}</span></a></dd>  -->
                                        <dd><a href=\"{{ url('/our-businesses#regional-presence') }}\"><span>{{ 'Regional Presence'|_ }}</span></a></dd>
                                    </dl>
                                </div>
                            </li>
                            <li {% if (this.page.id == 'our-services') %} class=\"active\" {% endif %}>
                                <a href=\"{{ url('/our-services') }}\"><span>{{ 'Our services'|_ }}</span></a>
                                <div class=\"sub-nav\">
                                    <dl>
                                        <dd><a href=\"{{ url('/our-services#laboratoryResearch') }}\"><span>{{ 'Laboratory research'|_ }} </span></a></dd>
                                        <dd><a href=\"{{ url('/our-services#certificationOfProducts') }}\"><span>{{ 'Certification of products'|_ }}</span></a></dd>
                                        <dd><a href=\"{{ url('/our-services#technicalConditions') }}\"><span>{{ 'Technical conditions'|_ }}</span></a></dd>
                                        <dd><a href=\"{{ url('/our-services#voluntaryCertification') }}\"><span>{{ 'Voluntary certification'|_ }}</span></a></dd>
                                    </dl>
                                </div>
                            </li>
                            <!-- <li {% if (this.page.id == 'our-responsibilities') %} class=\"active\" {% endif %}>
                                <a href=\"{{ url('/our-responsibilities') }}\"><span>{{ 'Our Responsibilities'|_ }}</span></a>
                                <div class=\"sub-nav\">
                                   <dl>
                                       <dd><a href=\"{{ url('/our-responsibilities#ourBelief') }}\"><span>{{ 'Our Belief'|_ }}</span></a></dd>
                                       <dd><a href=\"{{ url('/our-responsibilities#ourCommitment') }}\"><span>{{ 'Our Commitment'|_ }}</span></a></dd>
                                   </dl>
                                </div>
                            </li> -->
                           
                            
                            <li {% if (this.page.id == 'management-system-certification') %} class=\"active\" {% endif %}>
                                <a href=\"{{ url('/management-system-certification') }}\"><span>{{ 'Management System Certification'|_ }}</span></a>
                                <div class=\"sub-nav\">
                                    <dl>
                                        <dd><a href=\"{{ url('/management-system-certification#haccp') }}\"><span>{{ 'HACCP SYSTEM'|_ }} </span></a></dd>
                                        <dd><a href=\"{{ url('/management-system-certification#iso15189') }}\"><span>{{ 'ISO 15189'|_ }}</span></a></dd>
                                        <dd><a href=\"{{ url('/management-system-certification#iso9001') }}\"><span>{{ 'ISO 9001'|_ }}</span></a></dd>
                                        <dd><a href=\"{{ url('/management-system-certification#iso14001') }}\"><span>{{ 'ISO 14001'|_ }}</span></a></dd>
                                    </dl>
                                </div>
                            </li>
                            
                             <li {% if (this.page.id == 'careers') %} class=\"active\" {% endif %}>
                                <a href=\"{{ url('/careers') }}\"><span>{{ 'Careers'|_ }}</span></a>
                            </li>
                            
                            <li {% if (this.page.id == 'contact-us') %} class=\"active\" {% endif %}>
                                <a href=\"{{ url('contact-us') }}\"><span>{{ 'Contact us'|_ }}</span></a>
                            </li>
                             
                               <!--  <li class=\"\"><a href=\"our-rd.php\"><span>Our R&D</span></a>
                                   <div class=\"sub-nav\">
                                       <dl>
                                           <dd><a href=\"our-rd.php#leadership-and-focus\"><span>Dedication and Focus</span></a></dd>
                                           <dd><a href=\"our-rd.php#collaborations\"><span>Collaborations</span></a></dd>
                                           <dd><a href=\"our-rd.php#projects-and-awards\"><span>Projects and Awards</span></a></dd>
                                           <dd><a href=\"our-rd.php#jacobson-research-laboratory\"><span>Jacobson Research Laboratory</span></a></dd>
                                       </dl>
                                   </div>
                               </li>
                               
                               <li class=\"\"><a href=\"inverstor-relations.php\"><span>Investor <i></i>Relations</span></a>
                                   <div class=\"sub-nav\">
                                       <dl>
                                           <dd><a href=\"inverstor-relations.php#corporate-information\"><span>Corporate Information</span></a></dd>
                                           <dd><a href=\"inverstor-relations.php#corporate-governance\"><span>Corporate Governance</span></a></dd>
                                           <dd><a href=\"inverstor-relations.php#financial-highlights\"><span>Financial Highlights</span></a></dd>
                                           <dd><a href=\"inverstor-relations.php#financial-reports\"><span>Financial Reports</span></a></dd>
                                           <dd><a href=\"inverstor-relations.php#announcement-and-circulars\"><span>Announcement & Circulars</span></a></dd>
                                           <dd><a href=\"inverstor-relations.php#press-releases-and-presentations\"><span>Press Releases & Presentations</span></a></dd>
                                           <dd><a href=\"inverstor-relations.php#stock-information\"><span>Stock Information</span></a></dd>
                                           <dd><a href=\"inverstor-calendar.php\"><span>Investor Calendar</span></a></dd>
                                           <dd><a href=\"inverstor-share.php\"><span>Replace of Lost Share Certificates</span></a></dd>
                                           <dd><a href=\"inverstor-policy.php\"><span>Shareholders Communication Policy</span></a></dd>
                                           <dd><a href=\"inverstor-contact.php\"><span>IR Contact</span></a></dd>
                                           <dd><a href=\"inverstor-email.php\"><span>Email Notice</span></a></dd>
                                       </dl>
                                   </div>
                               </li>
                               <li class=\"\"><a href=\"careers.php\"><span>Careers</span></a>
                                   <div class=\"sub-nav\">
                                       <dl>
                                           <dd><a href=\"careers.php#why-jacobson\"><span>Why Jacobson</span></a></dd>
                                           <dd><a href=\"careers.php#join-us\"><span>Join Us</span></a></dd>
                                       </dl>
                                   </div>
                               </li>
                               <li class=\"\"><a href=\"contact-us.php\"><span>Contact Us</span></a>
                               <div class=\"sub-nav\">
                                       <dl>
                                           <dd><a href=\"contact-us.php#hk\"><span>Hong Kong</span></a></dd>
                                           <dd><a href=\"contact-us.php#macau\"><span>Macau</span></a></dd>
                                           <dd><a href=\"contact-us.php#china\"><span>China</span></a></dd>
                                           <dd><a href=\"contact-us.php#taiwan\"><span>Taiwan</span></a></dd>  
                                           <dd><a href=\"contact-us.php#singapore\"><span>Singapore</span></a></dd>  
                                       </dl>
                                   </div>
                               </li> -->
                            </ul>
                        </nav>                    
                </div>
                <a id=\"menu\" href=\"javascript:;\">
                    <span></span>
                    <span></span>
                    <span></span>
                </a>
            </div>
        </div>
    </header>", "/home/g8g5jo07hdpe/public_html/themes/pharma/partials/header.htm", "");
    }
}
