.class public Lorg/codehaus/jackson/map/deser/StdDeserializer$ClassDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/ClassDeserializer;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field final synthetic a:Lorg/codehaus/jackson/map/deser/StdDeserializer;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializer$ClassDeserializer;->a:Lorg/codehaus/jackson/map/deser/StdDeserializer;

    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/std/ClassDeserializer;-><init>()V

    return-void
.end method
