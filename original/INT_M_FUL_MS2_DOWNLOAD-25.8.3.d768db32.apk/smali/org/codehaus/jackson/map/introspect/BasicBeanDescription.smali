.class public Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
.super Lorg/codehaus/jackson/map/BeanDescription;
.source "SourceFile"


# instance fields
.field protected final _annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field protected _anyGetterMethod:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected _anySetterMethod:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected _bindings:Lorg/codehaus/jackson/map/type/TypeBindings;

.field protected final _classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

.field protected final _config:Lorg/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;"
        }
    .end annotation
.end field

.field protected _ignoredPropertyNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _ignoredPropertyNamesForDeser:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _injectables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation
.end field

.field protected _jsonValueMethod:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected final _properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Ljava/util/List;)V

    .line 89
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p2}, Lorg/codehaus/jackson/map/BeanDescription;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 98
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    .line 99
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 100
    iput-object p3, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 101
    iput-object p4, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    .line 102
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    goto :goto_0
.end method

.method public static forDeserialization(Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 5

    .prologue
    .line 112
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getConfig()Lorg/codehaus/jackson/map/MapperConfig;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getClassDef()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getProperties()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Ljava/util/List;)V

    .line 114
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getAnySetterMethod()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    iput-object v1, v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_anySetterMethod:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 115
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getIgnoredPropertyNames()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_ignoredPropertyNames:Ljava/util/Set;

    .line 116
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getIgnoredPropertyNamesForDeser()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_ignoredPropertyNamesForDeser:Ljava/util/Set;

    .line 117
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getInjectables()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_injectables:Ljava/util/Map;

    .line 118
    return-object v0
.end method

.method public static forOtherUse(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            ")",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Ljava/util/List;)V

    return-object v0
.end method

.method public static forSerialization(Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 5

    .prologue
    .line 129
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getConfig()Lorg/codehaus/jackson/map/MapperConfig;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getClassDef()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getProperties()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Ljava/util/List;)V

    .line 131
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getJsonValueMethod()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    iput-object v1, v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_jsonValueMethod:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 132
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getAnyGetterMethod()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    iput-object v1, v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_anyGetterMethod:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 133
    return-object v0
.end method


# virtual methods
.method public _findPropertyFields(Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 544
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/BeanPropertyDefinition;

    .line 545
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getField()Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v3

    .line 546
    if-eqz v3, :cond_0

    .line 547
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    .line 548
    if-eqz p1, :cond_1

    .line 549
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 553
    :cond_1
    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 556
    :cond_2
    return-object v1
.end method

.method public bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_bindings:Lorg/codehaus/jackson/map/type/TypeBindings;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeBindings;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_type:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/type/JavaType;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_bindings:Lorg/codehaus/jackson/map/type/TypeBindings;

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_bindings:Lorg/codehaus/jackson/map/type/TypeBindings;

    return-object v0
.end method

.method public findAnyGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_anyGetterMethod:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_anyGetterMethod:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 490
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid \'any-getter\' annotation on method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_anyGetterMethod:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(): return type is not instance of java.util.Map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_anyGetterMethod:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public findAnySetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_anySetterMethod:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_anySetterMethod:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 257
    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 258
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid \'any-setter\' annotation on method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_anySetterMethod:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(): first argument not of type String or Object, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_anySetterMethod:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public findBackReferenceProperties()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    const/4 v1, 0x0

    .line 505
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/BeanPropertyDefinition;

    .line 506
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getMutator()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v3

    .line 507
    if-eqz v3, :cond_0

    .line 510
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v4

    .line 511
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isBackReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    if-nez v1, :cond_2

    .line 513
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 515
    :goto_1
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple back-reference properties with name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public findCreatorPropertyNames()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 429
    const/4 v1, 0x0

    move v2, v3

    .line 431
    :goto_0
    const/4 v0, 0x2

    if-ge v2, v0, :cond_4

    .line 432
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getConstructors()Ljava/util/List;

    move-result-object v0

    .line 434
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 435
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameterCount()I

    move-result v7

    .line 436
    if-lt v7, v5, :cond_0

    .line 437
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v4

    .line 438
    if-eqz v4, :cond_0

    .line 439
    if-nez v1, :cond_1

    .line 440
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v5

    .line 443
    :goto_2
    if-ge v4, v7, :cond_0

    .line 444
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 432
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 431
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 448
    :cond_4
    if-nez v1, :cond_5

    .line 449
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 451
    :cond_5
    return-object v1
.end method

.method public findDefaultConstructor()Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getDefaultConstructor()Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    return-object v0
.end method

.method public findDeserializableFields(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_findPropertyFields(Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public varargs findFactoryMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getStaticMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 380
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->isFactoryMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v4

    .line 383
    array-length v5, p1

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, p1, v1

    .line 385
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 386
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 391
    :goto_1
    return-object v0

    .line 383
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findGetters(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 571
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/BeanPropertyDefinition;

    .line 572
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v3

    .line 573
    if-eqz v3, :cond_0

    .line 574
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    .line 575
    if-eqz p2, :cond_1

    .line 576
    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 580
    :cond_1
    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 583
    :cond_2
    return-object v1
.end method

.method public findInjectables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_injectables:Ljava/util/Map;

    return-object v0
.end method

.method public findJsonValueMethod()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_jsonValueMethod:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    return-object v0
.end method

.method public findProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    return-object v0
.end method

.method public findSerializableFields(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_findPropertyFields(Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findSerializableFields(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findSerializableFields(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public findSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object p1

    goto :goto_0
.end method

.method public findSetters(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 591
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/BeanPropertyDefinition;

    .line 592
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getSetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v3

    .line 593
    if-eqz v3, :cond_0

    .line 594
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 597
    :cond_1
    return-object v1
.end method

.method public varargs findSingleArgConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getConstructors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 355
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 356
    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v4

    .line 357
    array-length v5, p1

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, p1, v1

    .line 358
    if-ne v6, v4, :cond_1

    .line 359
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 364
    :goto_1
    return-object v0

    .line 357
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v0

    return-object v0
.end method

.method public getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    return-object v0
.end method

.method public getConstructors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getConstructors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFactoryMethods()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getStaticMethods()Ljava/util/List;

    move-result-object v0

    .line 330
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    :goto_0
    return-object v0

    .line 333
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 335
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->isFactoryMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 339
    goto :goto_0
.end method

.method public getIgnoredPropertyNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_ignoredPropertyNames:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_ignoredPropertyNames:Ljava/util/Set;

    goto :goto_0
.end method

.method public getIgnoredPropertyNamesForDeser()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_ignoredPropertyNamesForDeser:Ljava/util/Set;

    return-object v0
.end method

.method public hasKnownClassAnnotations()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->hasAnnotations()Z

    move-result v0

    return v0
.end method

.method public instantiateBean(Z)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getDefaultConstructor()Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    .line 301
    if-nez v0, :cond_0

    .line 302
    const/4 v0, 0x0

    .line 308
    :goto_0
    return-object v0

    .line 304
    :cond_0
    if-eqz p1, :cond_1

    .line 305
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->fixAccess()V

    .line 308
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 311
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 314
    :cond_2
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 315
    :cond_3
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 316
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate bean of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 309
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected isFactoryMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v2

    .line 401
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v0

    .line 409
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 410
    goto :goto_0

    .line 412
    :cond_2
    const-string v2, "valueOf"

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 413
    goto :goto_0
.end method

.method public resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method
