.class final Lorg/codehaus/jackson/map/ser/impl/c;
.super Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.source "SourceFile"


# static fields
.field protected static final a:Lorg/codehaus/jackson/map/ser/impl/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/c;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/impl/c;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/impl/c;->a:Lorg/codehaus/jackson/map/ser/impl/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;-><init>()V

    return-void
.end method


# virtual methods
.method public newWith(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/e;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/jackson/map/ser/impl/e;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method public serializerFor(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method
