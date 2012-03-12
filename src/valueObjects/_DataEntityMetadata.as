
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.collections.ArrayCollection;
import mx.events.ValidationResultEvent;
import valueObjects.Children;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _DataEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("after", "before", "children", "modhash");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("after", "before", "children", "modhash");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("after", "before", "children", "modhash");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("after", "before", "children", "modhash");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("after", "before", "children", "modhash");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("children");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Data";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _afterIsValid:Boolean;
    model_internal var _afterValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _afterIsValidCacheInitialized:Boolean = false;
    model_internal var _afterValidationFailureMessages:Array;
    
    model_internal var _beforeIsValid:Boolean;
    model_internal var _beforeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _beforeIsValidCacheInitialized:Boolean = false;
    model_internal var _beforeValidationFailureMessages:Array;
    
    model_internal var _childrenIsValid:Boolean;
    model_internal var _childrenValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _childrenIsValidCacheInitialized:Boolean = false;
    model_internal var _childrenValidationFailureMessages:Array;
    
    model_internal var _modhashIsValid:Boolean;
    model_internal var _modhashValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _modhashIsValidCacheInitialized:Boolean = false;
    model_internal var _modhashValidationFailureMessages:Array;

    model_internal var _instance:_Super_Data;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _DataEntityMetadata(value : _Super_Data)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["after"] = new Array();
            model_internal::dependentsOnMap["before"] = new Array();
            model_internal::dependentsOnMap["children"] = new Array();
            model_internal::dependentsOnMap["modhash"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["children"] = "valueObjects.Children";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["after"] = "String";
        model_internal::propertyTypeMap["before"] = "Object";
        model_internal::propertyTypeMap["children"] = "ArrayCollection";
        model_internal::propertyTypeMap["modhash"] = "String";

        model_internal::_instance = value;
        model_internal::_afterValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAfter);
        model_internal::_afterValidator.required = true;
        model_internal::_afterValidator.requiredFieldError = "after is required";
        //model_internal::_afterValidator.source = model_internal::_instance;
        //model_internal::_afterValidator.property = "after";
        model_internal::_beforeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForBefore);
        model_internal::_beforeValidator.required = true;
        model_internal::_beforeValidator.requiredFieldError = "before is required";
        //model_internal::_beforeValidator.source = model_internal::_instance;
        //model_internal::_beforeValidator.property = "before";
        model_internal::_childrenValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForChildren);
        model_internal::_childrenValidator.required = true;
        model_internal::_childrenValidator.requiredFieldError = "children is required";
        //model_internal::_childrenValidator.source = model_internal::_instance;
        //model_internal::_childrenValidator.property = "children";
        model_internal::_modhashValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForModhash);
        model_internal::_modhashValidator.required = true;
        model_internal::_modhashValidator.requiredFieldError = "modhash is required";
        //model_internal::_modhashValidator.source = model_internal::_instance;
        //model_internal::_modhashValidator.property = "modhash";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity Data");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity Data");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Data");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity Data");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Data");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity Data");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isAfterAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBeforeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isChildrenAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isModhashAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnAfter():void
    {
        if (model_internal::_afterIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAfter = null;
            model_internal::calculateAfterIsValid();
        }
    }
    public function invalidateDependentOnBefore():void
    {
        if (model_internal::_beforeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfBefore = null;
            model_internal::calculateBeforeIsValid();
        }
    }
    public function invalidateDependentOnChildren():void
    {
        if (model_internal::_childrenIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfChildren = null;
            model_internal::calculateChildrenIsValid();
        }
    }
    public function invalidateDependentOnModhash():void
    {
        if (model_internal::_modhashIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfModhash = null;
            model_internal::calculateModhashIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get afterStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get afterValidator() : StyleValidator
    {
        return model_internal::_afterValidator;
    }

    model_internal function set _afterIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_afterIsValid;         
        if (oldValue !== value)
        {
            model_internal::_afterIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "afterIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get afterIsValid():Boolean
    {
        if (!model_internal::_afterIsValidCacheInitialized)
        {
            model_internal::calculateAfterIsValid();
        }

        return model_internal::_afterIsValid;
    }

    model_internal function calculateAfterIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_afterValidator.validate(model_internal::_instance.after)
        model_internal::_afterIsValid_der = (valRes.results == null);
        model_internal::_afterIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::afterValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::afterValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get afterValidationFailureMessages():Array
    {
        if (model_internal::_afterValidationFailureMessages == null)
            model_internal::calculateAfterIsValid();

        return _afterValidationFailureMessages;
    }

    model_internal function set afterValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_afterValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_afterValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "afterValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get beforeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get beforeValidator() : StyleValidator
    {
        return model_internal::_beforeValidator;
    }

    model_internal function set _beforeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_beforeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_beforeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "beforeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get beforeIsValid():Boolean
    {
        if (!model_internal::_beforeIsValidCacheInitialized)
        {
            model_internal::calculateBeforeIsValid();
        }

        return model_internal::_beforeIsValid;
    }

    model_internal function calculateBeforeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_beforeValidator.validate(model_internal::_instance.before)
        model_internal::_beforeIsValid_der = (valRes.results == null);
        model_internal::_beforeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::beforeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::beforeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get beforeValidationFailureMessages():Array
    {
        if (model_internal::_beforeValidationFailureMessages == null)
            model_internal::calculateBeforeIsValid();

        return _beforeValidationFailureMessages;
    }

    model_internal function set beforeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_beforeValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_beforeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "beforeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get childrenStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get childrenValidator() : StyleValidator
    {
        return model_internal::_childrenValidator;
    }

    model_internal function set _childrenIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_childrenIsValid;         
        if (oldValue !== value)
        {
            model_internal::_childrenIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "childrenIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get childrenIsValid():Boolean
    {
        if (!model_internal::_childrenIsValidCacheInitialized)
        {
            model_internal::calculateChildrenIsValid();
        }

        return model_internal::_childrenIsValid;
    }

    model_internal function calculateChildrenIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_childrenValidator.validate(model_internal::_instance.children)
        model_internal::_childrenIsValid_der = (valRes.results == null);
        model_internal::_childrenIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::childrenValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::childrenValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get childrenValidationFailureMessages():Array
    {
        if (model_internal::_childrenValidationFailureMessages == null)
            model_internal::calculateChildrenIsValid();

        return _childrenValidationFailureMessages;
    }

    model_internal function set childrenValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_childrenValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_childrenValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "childrenValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get modhashStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get modhashValidator() : StyleValidator
    {
        return model_internal::_modhashValidator;
    }

    model_internal function set _modhashIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_modhashIsValid;         
        if (oldValue !== value)
        {
            model_internal::_modhashIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modhashIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get modhashIsValid():Boolean
    {
        if (!model_internal::_modhashIsValidCacheInitialized)
        {
            model_internal::calculateModhashIsValid();
        }

        return model_internal::_modhashIsValid;
    }

    model_internal function calculateModhashIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_modhashValidator.validate(model_internal::_instance.modhash)
        model_internal::_modhashIsValid_der = (valRes.results == null);
        model_internal::_modhashIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::modhashValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::modhashValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get modhashValidationFailureMessages():Array
    {
        if (model_internal::_modhashValidationFailureMessages == null)
            model_internal::calculateModhashIsValid();

        return _modhashValidationFailureMessages;
    }

    model_internal function set modhashValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_modhashValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_modhashValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modhashValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("after"):
            {
                return afterValidationFailureMessages;
            }
            case("before"):
            {
                return beforeValidationFailureMessages;
            }
            case("children"):
            {
                return childrenValidationFailureMessages;
            }
            case("modhash"):
            {
                return modhashValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
