.class Lde/gdata/mobilesecurity/intents/bq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    const-string v0, "^\"(.*)\"$"

    const-string v1, "$1"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/bq;->a:Ljava/lang/String;

    .line 487
    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/bq;->b:Ljava/lang/String;

    .line 488
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/bq;->c:Ljava/lang/Integer;

    .line 489
    return-void
.end method
