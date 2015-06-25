.class public Lorg/codehaus/jackson/map/deser/BeanDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/StdDeserializer;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/std/StdDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/codehaus/jackson/map/ResolvableDeserializer;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonCachable;
.end annotation


# instance fields
.field protected _anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

.field protected final _backRefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected final _beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

.field protected final _beanType:Lorg/codehaus/jackson/type/JavaType;

.field protected _delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _externalTypeIdHandler:Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

.field protected final _forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

.field protected final _ignorableProps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _ignoreAllUnknown:Z

.field protected final _injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

.field protected _nonStandardCreation:Z

.field protected final _property:Lorg/codehaus/jackson/map/BeanProperty;

.field protected final _propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

.field protected _subDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

.field protected final _valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/deser/ValueInstantiator;Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/deser/ValueInstantiator;",
            "Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/codehaus/jackson/map/deser/SettableAnyProperty;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/deser/impl/ValueInjector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/BeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/BeanDescription;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/deser/ValueInstantiator;Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/util/List;)V

    .line 210
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;)V
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;Z)V

    .line 256
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;Z)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 265
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 266
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    .line 267
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    .line 269
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    .line 270
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 271
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 273
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    .line 274
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    .line 275
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    .line 276
    iput-boolean p2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    .line 277
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 278
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    .line 280
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    iput-boolean v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    .line 281
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    .line 282
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/deser/ValueInstantiator;Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/deser/ValueInstantiator;",
            "Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/codehaus/jackson/map/deser/SettableAnyProperty;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/deser/impl/ValueInjector;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p2}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 222
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 223
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    .line 224
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    .line 226
    iput-object p4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    .line 227
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromObjectWith()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    new-instance v1, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    invoke-direct {v1, p4}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;-><init>(Lorg/codehaus/jackson/map/deser/ValueInstantiator;)V

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 233
    :goto_0
    iput-object p5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    .line 234
    iput-object p6, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    .line 235
    iput-object p7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    .line 236
    iput-boolean p8, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    .line 237
    iput-object p9, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 238
    if-eqz p10, :cond_0

    invoke-interface {p10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_1
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    .line 241
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    if-eqz v0, :cond_4

    :cond_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    .line 245
    return-void

    .line 230
    :cond_2
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    goto :goto_0

    .line 238
    :cond_3
    invoke-interface {p10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    invoke-interface {p10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    goto :goto_1

    .line 241
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLorg/codehaus/jackson/map/deser/SettableAnyProperty;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;",
            "Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/codehaus/jackson/map/deser/SettableAnyProperty;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->constructValueInstantiator(Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v4

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/deser/ValueInstantiator;Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/util/List;)V

    .line 194
    return-void
.end method

.method private final a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    .line 727
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v0, :cond_1

    .line 719
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    invoke-virtual {p0, v0, p3, p4, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_0

    .line 725
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final _deserializeUsingPropertyBased(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 891
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 892
    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->startBuilding(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;

    move-result-object v4

    .line 897
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    .line 898
    :goto_0
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v5, :cond_7

    .line 899
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 900
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 902
    invoke-virtual {v3, v1}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    .line 903
    if-eqz v5, :cond_2

    .line 905
    invoke-virtual {v5, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    .line 906
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 907
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 910
    :try_start_0
    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 916
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 917
    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handlePolymorphic(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v2

    .line 969
    :goto_1
    return-object v2

    .line 911
    :catch_0
    move-exception v5

    .line 912
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v6}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 898
    :cond_0
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 919
    :cond_1
    if-eqz v0, :cond_a

    .line 920
    invoke-virtual {p0, p2, v1, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperties(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 923
    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 928
    :cond_2
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v5, v1}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    .line 929
    if-eqz v5, :cond_3

    .line 930
    invoke-virtual {v5, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/Object;)V

    goto :goto_2

    .line 936
    :cond_3
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 937
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 941
    :cond_4
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v5, :cond_5

    .line 942
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v6, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v6}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 946
    :cond_5
    if-nez v0, :cond_6

    .line 947
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 949
    :cond_6
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_2

    .line 956
    :cond_7
    :try_start_1
    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 961
    if-eqz v0, :cond_9

    .line 963
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v4}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_8

    .line 964
    invoke-virtual {p0, v2, p2, v1, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handlePolymorphic(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 957
    :catch_1
    move-exception v0

    .line 958
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 967
    :cond_8
    invoke-virtual {p0, p2, v1, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperties(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_9
    move-object v2, v1

    .line 969
    goto :goto_1

    :cond_a
    move-object v0, v1

    goto :goto_3
.end method

.method protected _findSubclassDeserializer(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            "Ljava/lang/Object;",
            "Lorg/codehaus/jackson/util/TokenBuffer;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1400
    monitor-enter p0

    .line 1401
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1402
    :goto_0
    monitor-exit p0

    .line 1403
    if-eqz v0, :cond_2

    .line 1424
    :cond_0
    :goto_1
    return-object v0

    .line 1401
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    new-instance v1, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    goto :goto_0

    .line 1402
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1407
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationContext;->getDeserializerProvider()Lorg/codehaus/jackson/map/DeserializerProvider;

    move-result-object v1

    .line 1408
    if-eqz v1, :cond_0

    .line 1409
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 1413
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationContext;->getConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {v1, v2, v0, v3}, Lorg/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 1415
    if-eqz v0, :cond_0

    .line 1416
    monitor-enter p0

    .line 1417
    :try_start_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    if-nez v1, :cond_3

    .line 1418
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    .line 1420
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    new-instance v2, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method protected _resolveInnerClassValuedProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 538
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getValueDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 540
    instance-of v2, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-eqz v2, :cond_1

    .line 541
    check-cast v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    .line 542
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->getValueInstantiator()Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v0

    if-nez v0, :cond_1

    .line 544
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 545
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 547
    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 548
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 549
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 550
    array-length v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    aget-object v6, v6, v1

    if-ne v6, v2, :cond_2

    .line 551
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-static {v5}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 554
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;

    invoke-direct {v0, p2, v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;-><init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/reflect/Constructor;)V

    move-object p2, v0

    .line 560
    :cond_1
    return-object p2

    .line 548
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected _resolveManagedReferenceProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 7

    .prologue
    .line 464
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getManagedReferenceName()Ljava/lang/String;

    move-result-object v1

    .line 465
    if-nez v1, :cond_0

    .line 501
    :goto_0
    return-object p2

    .line 468
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getValueDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 470
    const/4 v5, 0x0

    .line 471
    instance-of v2, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-eqz v2, :cond_1

    .line 472
    check-cast v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findBackReference(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v3

    .line 489
    :goto_1
    if-nez v3, :cond_5

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not handle managed/back reference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': no back reference property found from type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    instance-of v2, v0, Lorg/codehaus/jackson/map/deser/std/ContainerDeserializerBase;

    if-eqz v2, :cond_3

    .line 474
    check-cast v0, Lorg/codehaus/jackson/map/deser/std/ContainerDeserializerBase;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/std/ContainerDeserializerBase;->getContentDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 475
    instance-of v2, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-nez v2, :cond_2

    .line 476
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not handle managed/back reference \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\': value deserializer is of type ContainerDeserializerBase, but content type is not handled by a BeanDeserializer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (instead it\'s of type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 480
    :cond_2
    check-cast v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findBackReference(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v3

    .line 481
    const/4 v5, 0x1

    .line 482
    goto :goto_1

    :cond_3
    instance-of v2, v0, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;

    if-eqz v2, :cond_4

    .line 483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not handle managed/back reference for abstract types (property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not handle managed/back reference \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\': type for value deserializer is not BeanDeserializer or ContainerDeserializerBase, but "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 494
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    .line 495
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 496
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 497
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not handle managed/back reference \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\': back reference type ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not compatible with managed type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 501
    :cond_6
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/util/Annotations;Z)V

    move-object p2, v0

    goto/16 :goto_0
.end method

.method protected _resolveUnwrappedProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 2

    .prologue
    .line 514
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getMember()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->shouldUnwrapProperty(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 516
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getValueDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/JsonDeserializer;->unwrappingDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 518
    if-eq v1, v0, :cond_0

    if-eqz v1, :cond_0

    .line 520
    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    .line 523
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 576
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 578
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 579
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 580
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 600
    :goto_0
    return-object v0

    .line 583
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/map/deser/b;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 602
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 585
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromString(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 587
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromNumber(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 589
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromDouble(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 591
    :pswitch_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 594
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromBoolean(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 597
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 600
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 617
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    if-eqz v0, :cond_2

    .line 618
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeWithUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 655
    :cond_1
    :goto_0
    return-object p3

    .line 620
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_externalTypeIdHandler:Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    if-eqz v0, :cond_3

    .line 621
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeWithExternalTypeId(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 623
    :cond_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 625
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    .line 626
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 628
    :cond_4
    :goto_1
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 629
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 632
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    .line 634
    if-eqz v1, :cond_5

    .line 636
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 637
    :catch_0
    move-exception v1

    .line 638
    invoke-virtual {p0, v1, p3, v0, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_2

    .line 645
    :cond_5
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 646
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 647
    :cond_6
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v1, :cond_7

    .line 648
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 652
    :cond_7
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public deserializeFromArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 866
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 867
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v1, :cond_0

    .line 868
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :cond_0
    return-object v0

    .line 871
    :catch_0
    move-exception v0

    .line 872
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 875
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public deserializeFromBoolean(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromBoolean()Z

    move-result v0

    if-nez v0, :cond_1

    .line 847
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 848
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v1, :cond_0

    .line 849
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 855
    :cond_0
    :goto_0
    return-object v0

    .line 854
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 855
    :goto_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createFromBoolean(Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 854
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public deserializeFromDouble(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 815
    sget-object v0, Lorg/codehaus/jackson/map/deser/b;->b:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 830
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_2

    .line 831
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .line 818
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromDouble()Z

    move-result v0

    if-nez v0, :cond_1

    .line 820
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 821
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v1, :cond_0

    .line 822
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 827
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createFromDouble(D)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 833
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "no suitable creator method found to deserialize from JSON floating-point number"

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 815
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public deserializeFromNumber(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 771
    sget-object v0, Lorg/codehaus/jackson/map/deser/b;->b:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 796
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_3

    .line 797
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 798
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v1, :cond_0

    .line 799
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 801
    :cond_0
    :goto_0
    return-object v0

    .line 773
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromInt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 775
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 776
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v1, :cond_0

    .line 777
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 782
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createFromInt(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 784
    :pswitch_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_2

    .line 785
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromInt()Z

    move-result v0

    if-nez v0, :cond_2

    .line 786
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v1, :cond_0

    .line 788
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 793
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createFromLong(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 803
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "no suitable creator method found to deserialize from JSON integer number"

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 771
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deserializeFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 676
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    if-eqz v0, :cond_3

    .line 677
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeWithUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 705
    :cond_0
    :goto_0
    return-object v0

    .line 680
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_externalTypeIdHandler:Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    if-eqz v0, :cond_2

    .line 681
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeWithExternalTypeId(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 683
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromObjectUsingNonDefault(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 686
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDefault()Ljava/lang/Object;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v1, :cond_4

    .line 688
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 690
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    .line 691
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 694
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v2

    .line 695
    if-eqz v2, :cond_5

    .line 697
    :try_start_0
    invoke-virtual {v2, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 698
    :catch_0
    move-exception v2

    .line 699
    invoke-virtual {p0, v2, v0, v1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_2

    .line 703
    :cond_5
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected deserializeFromObjectUsingNonDefault(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 739
    :goto_0
    return-object v0

    .line 738
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_1

    .line 739
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_deserializeUsingPropertyBased(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 742
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not instantiate abstract type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (need to add/enable type information?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 746
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No suitable constructor found for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": can not instantiate from JSON object (need to add/enable type information?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public deserializeFromString(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromString()Z

    move-result v0

    if-nez v0, :cond_1

    .line 758
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 759
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v1, :cond_0

    .line 760
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 765
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected deserializeUsingPropertyBasedWithExternalTypeId(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1256
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_externalTypeIdHandler:Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->start()Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    move-result-object v2

    .line 1257
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 1258
    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->startBuilding(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;

    move-result-object v4

    .line 1260
    new-instance v5, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 1261
    invoke-virtual {v5}, Lorg/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    .line 1263
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1264
    :goto_0
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v6, :cond_6

    .line 1265
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 1266
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1268
    invoke-virtual {v3, v6}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    .line 1269
    if-eqz v0, :cond_3

    .line 1271
    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    .line 1272
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v0

    invoke-virtual {v4, v0, v7}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1276
    :try_start_0
    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1282
    :goto_1
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_1

    .line 1283
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1284
    invoke-virtual {v5, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 1285
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1277
    :catch_0
    move-exception v0

    .line 1278
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v7}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v0, v7, v6, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 1264
    :cond_0
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 1287
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v0, v3, :cond_2

    .line 1290
    const-string v0, "Can not create polymorphic instances with unwrapped values"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 1292
    :cond_2
    invoke-virtual {v2, p1, p2, v1}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->complete(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1327
    :goto_3
    return-object v0

    .line 1297
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    .line 1298
    if-eqz v0, :cond_4

    .line 1299
    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/Object;)V

    goto :goto_2

    .line 1303
    :cond_4
    invoke-virtual {v2, p1, p2, v6, v1}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->handleToken(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1309
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1310
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 1314
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v7, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v0, v6, v7}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1322
    :cond_6
    :try_start_1
    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1327
    invoke-virtual {v2, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->complete(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 1323
    :catch_1
    move-exception v0

    .line 1324
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V

    move-object v0, v1

    .line 1325
    goto :goto_3
.end method

.method protected deserializeUsingPropertyBasedWithUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1118
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 1119
    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->startBuilding(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;

    move-result-object v2

    .line 1121
    new-instance v3, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 1122
    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    .line 1124
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1125
    :goto_0
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_6

    .line 1126
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 1127
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1129
    invoke-virtual {v1, v4}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    .line 1130
    if-eqz v0, :cond_3

    .line 1132
    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    .line 1133
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v0

    invoke-virtual {v2, v0, v5}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1137
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1143
    :goto_1
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1

    .line 1144
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1145
    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 1146
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v5}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v0, v5, v4, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 1125
    :cond_0
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 1148
    :cond_1
    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 1149
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 1152
    const-string v0, "Can not create polymorphic instances with unwrapped values"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 1154
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v0, p1, p2, v1, v3}, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 1187
    :goto_3
    return-object v0

    .line 1159
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    .line 1160
    if-eqz v0, :cond_4

    .line 1161
    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/Object;)V

    goto :goto_2

    .line 1167
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1168
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 1171
    :cond_5
    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 1174
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v5, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v0, v4, v5}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1182
    :cond_6
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1187
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v1, p1, p2, v0, v3}, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 1183
    :catch_1
    move-exception v0

    .line 1184
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 1185
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected deserializeWithExternalTypeId(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeUsingPropertyBasedWithExternalTypeId(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 1203
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDefault()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeWithExternalTypeId(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected deserializeWithExternalTypeId(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1210
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_externalTypeIdHandler:Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->start()Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    move-result-object v1

    .line 1211
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_5

    .line 1212
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 1213
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1214
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    .line 1215
    if-eqz v0, :cond_2

    .line 1217
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->isScalarValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1218
    invoke-virtual {v1, p1, p2, v2, p3}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->handleTypePropertyValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1221
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    invoke-virtual {p0, v0, p3, v2, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 1228
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1229
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    .line 1233
    :cond_3
    invoke-virtual {v1, p1, p2, v2, p3}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->handleToken(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1237
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v0, :cond_4

    .line 1239
    :try_start_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v0, p1, p2, p3, v2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1240
    :catch_1
    move-exception v0

    .line 1241
    invoke-virtual {p0, v0, p3, v2, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 1246
    :cond_4
    invoke-virtual {p0, p1, p2, p3, v2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1250
    :cond_5
    invoke-virtual {v1, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->complete(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected deserializeWithUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1027
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1074
    :goto_0
    return-object v0

    .line 1030
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_1

    .line 1031
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeUsingPropertyBasedWithUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1034
    :cond_1
    new-instance v2, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 1035
    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    .line 1036
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDefault()Ljava/lang/Object;

    move-result-object v0

    .line 1038
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v1, :cond_2

    .line 1039
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 1042
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v3, :cond_6

    .line 1043
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 1044
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1045
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    .line 1046
    if-eqz v1, :cond_4

    .line 1048
    :try_start_0
    invoke-virtual {v1, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 1049
    :catch_0
    move-exception v1

    .line 1050
    invoke-virtual {p0, v1, v0, v3, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_2

    .line 1055
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1056
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 1060
    :cond_5
    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 1063
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v1, :cond_3

    .line 1065
    :try_start_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v1, p1, p2, v0, v3}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1066
    :catch_1
    move-exception v1

    .line 1067
    invoke-virtual {p0, v1, v0, v3, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_2

    .line 1072
    :cond_6
    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 1073
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected deserializeWithUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1080
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1081
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1082
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1084
    :cond_0
    new-instance v1, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 1085
    invoke-virtual {v1}, Lorg/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    .line 1086
    :goto_0
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_4

    .line 1087
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 1088
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v2

    .line 1089
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1090
    if-eqz v2, :cond_2

    .line 1092
    :try_start_0
    invoke-virtual {v2, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 1093
    :catch_0
    move-exception v2

    .line 1094
    invoke-virtual {p0, v2, p3, v0, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 1098
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1099
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    .line 1103
    :cond_3
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 1106
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v2, :cond_1

    .line 1107
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v2, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1110
    :cond_4
    invoke-virtual {v1}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 1111
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    .line 1112
    return-object p3
.end method

.method public findBackReference(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    goto :goto_0
.end method

.method public final getBeanClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->size()I

    move-result v0

    return v0
.end method

.method public getValueInstantiator()Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    return-object v0
.end method

.method public getValueType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method protected handlePolymorphic(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 988
    invoke-virtual {p0, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_findSubclassDeserializer(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 989
    if-eqz v1, :cond_1

    .line 990
    if-eqz p4, :cond_3

    .line 992
    invoke-virtual {p4}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 993
    invoke-virtual {p4}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser()Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 994
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 995
    invoke-virtual {v1, v0, p2, p3}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 998
    :goto_0
    if-eqz p1, :cond_0

    .line 999
    invoke-virtual {v1, p1, p2, v0}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1011
    :cond_0
    :goto_1
    return-object v0

    .line 1004
    :cond_1
    if-eqz p4, :cond_2

    .line 1005
    invoke-virtual {p0, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperties(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 1008
    :goto_2
    if-eqz p1, :cond_0

    .line 1009
    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p3

    goto :goto_2

    :cond_3
    move-object v0, p3

    goto :goto_0
.end method

.method protected handleUnknownProperties(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1377
    invoke-virtual {p3}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 1380
    invoke-virtual {p3}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser()Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 1381
    :goto_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    .line 1382
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 1384
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1385
    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1387
    :cond_0
    return-object p2
.end method

.method protected handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1357
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1359
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    .line 1366
    :goto_0
    return-void

    .line 1365
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1339
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1340
    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/ValueInjector;->inject(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 1339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1342
    :cond_0
    return-void
.end method

.method public properties()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only call before BeanDeserializer has been resolved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->allProperties()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->allProperties()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v2

    move-object v3, v2

    .line 374
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 378
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->hasValueDeserializer()Z

    move-result v4

    if-nez v4, :cond_d

    .line 379
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    invoke-virtual {p0, p1, p2, v4, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v4

    .line 382
    :goto_1
    invoke-virtual {p0, p1, v4}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_resolveManagedReferenceProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    .line 384
    invoke-virtual {p0, p1, v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_resolveUnwrappedProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v4

    .line 385
    if-eqz v4, :cond_c

    .line 387
    if-nez v3, :cond_1

    .line 388
    new-instance v3, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;-><init>()V

    .line 390
    :cond_1
    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->addProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .line 393
    :goto_2
    invoke-virtual {p0, p1, v4}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_resolveInnerClassValuedProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v4

    .line 394
    if-eq v4, v0, :cond_2

    .line 395
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->replace(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .line 401
    :cond_2
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->hasValueTypeDeserializer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getValueTypeDeserializer()Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v5

    .line 403
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/TypeDeserializer;->getTypeInclusion()Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    move-result-object v0

    sget-object v7, Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    if-ne v0, v7, :cond_0

    .line 404
    if-nez v1, :cond_b

    .line 405
    new-instance v0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;-><init>()V

    .line 407
    :goto_3
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/TypeDeserializer;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->addExternal(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v1, v4}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->remove(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    move-object v1, v0

    goto :goto_0

    .line 415
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->hasValueDeserializer()Z

    move-result v0

    if-nez v0, :cond_4

    .line 416
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->getProperty()Lorg/codehaus/jackson/map/BeanProperty;

    move-result-object v5

    invoke-virtual {p0, p1, p2, v4, v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 420
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 421
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 422
    if-nez v0, :cond_5

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid delegate-creator definition for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": value instantiator ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_5
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateCreator()Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v4

    .line 429
    new-instance v5, Lorg/codehaus/jackson/map/BeanProperty$Std;

    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v6

    invoke-direct {v5, v2, v0, v6, v4}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 431
    invoke-virtual {p0, p1, p2, v0, v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 435
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_8

    .line 436
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->getCreatorProperties()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 437
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->hasValueDeserializer()Z

    move-result v4

    if-nez v4, :cond_7

    .line 438
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {p0, p1, p2, v5, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->assignDeserializer(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    goto :goto_4

    .line 443
    :cond_8
    if-eqz v1, :cond_9

    .line 444
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->build()Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_externalTypeIdHandler:Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    .line 446
    iput-boolean v8, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    .line 449
    :cond_9
    iput-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    .line 450
    if-eqz v3, :cond_a

    .line 451
    iput-boolean v8, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    .line 453
    :cond_a
    return-void

    :cond_b
    move-object v0, v1

    goto/16 :goto_3

    :cond_c
    move-object v4, v5

    goto/16 :goto_2

    :cond_d
    move-object v4, v0

    goto/16 :goto_1
.end method

.method public unwrappingDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-eq v0, v1, :cond_0

    .line 298
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1539
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;ILorg/codehaus/jackson/map/DeserializationContext;)V

    .line 1540
    return-void
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;ILorg/codehaus/jackson/map/DeserializationContext;)V
    .locals 3

    .prologue
    .line 1478
    move-object v0, p1

    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1479
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 1482
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 1483
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 1485
    :cond_1
    if-eqz p4, :cond_2

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p4, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 1487
    :goto_1
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_5

    .line 1488
    if-eqz v1, :cond_3

    instance-of v1, v0, Lorg/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_6

    .line 1489
    :cond_3
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 1485
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1491
    :cond_5
    if-nez v1, :cond_6

    .line 1492
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 1493
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 1497
    :cond_6
    invoke-static {v0, p2, p3}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1529
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 1530
    return-void
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V
    .locals 3

    .prologue
    .line 1453
    move-object v0, p1

    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1454
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 1457
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 1458
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 1460
    :cond_1
    if-eqz p4, :cond_2

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p4, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 1462
    :goto_1
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_5

    .line 1463
    if-eqz v1, :cond_3

    instance-of v1, v0, Lorg/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_6

    .line 1464
    :cond_3
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 1460
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1466
    :cond_5
    if-nez v1, :cond_6

    .line 1467
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 1468
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 1472
    :cond_6
    invoke-static {v0, p2, p3}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method protected wrapInstantiationProblem(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V
    .locals 3

    .prologue
    .line 1503
    move-object v0, p1

    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1504
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 1507
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 1508
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 1510
    :cond_1
    if-eqz p2, :cond_2

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 1511
    :goto_1
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_4

    .line 1513
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 1510
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1514
    :cond_4
    if-nez v1, :cond_5

    .line 1515
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5

    .line 1516
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 1519
    :cond_5
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method
