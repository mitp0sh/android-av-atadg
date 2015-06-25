.class public Lde/gdata/mobilesecurity/util/UniqueThreadDateFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lde/gdata/mobilesecurity/util/r;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/util/r;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/util/UniqueThreadDateFormatter;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lde/gdata/mobilesecurity/util/UniqueThreadDateFormatter;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    return-object v0
.end method
