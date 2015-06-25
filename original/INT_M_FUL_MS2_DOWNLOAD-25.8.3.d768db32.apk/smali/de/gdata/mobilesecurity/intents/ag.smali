.class Lde/gdata/mobilesecurity/intents/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/Main;


# direct methods
.method private constructor <init>(Lde/gdata/mobilesecurity/intents/Main;)V
    .locals 0

    .prologue
    .line 1694
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/ag;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/gdata/mobilesecurity/intents/Main;Lde/gdata/mobilesecurity/intents/k;)V
    .locals 0

    .prologue
    .line 1694
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/intents/ag;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1697
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ag;->a:Lde/gdata/mobilesecurity/intents/Main;

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;Landroid/view/View;ILandroid/os/Bundle;)V

    .line 1698
    return-void
.end method
