.class final Lorg/codehaus/jackson/map/deser/std/ad;
.super Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.source "SourceFile"


# static fields
.field private static final a:Lorg/codehaus/jackson/map/deser/std/ad;

.field private static final b:Lorg/codehaus/jackson/map/deser/std/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/ad;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/std/ad;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/codehaus/jackson/map/deser/std/ad;->a:Lorg/codehaus/jackson/map/deser/std/ad;

    .line 79
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/ad;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/std/ad;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/codehaus/jackson/map/deser/std/ad;->b:Lorg/codehaus/jackson/map/deser/std/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/deser/std/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/deser/std/ad;"
        }
    .end annotation

    .prologue
    .line 85
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_0

    .line 86
    sget-object v0, Lorg/codehaus/jackson/map/deser/std/ad;->a:Lorg/codehaus/jackson/map/deser/std/ad;

    .line 91
    :goto_0
    return-object v0

    .line 88
    :cond_0
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    .line 89
    sget-object v0, Lorg/codehaus/jackson/map/deser/std/ad;->b:Lorg/codehaus/jackson/map/deser/std/ad;

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/ad;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/deser/std/ad;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method


# virtual methods
.method public synthetic _parse(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/ad;->a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 96
    return-object p1
.end method
