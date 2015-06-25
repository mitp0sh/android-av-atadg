.class Lde/gdata/mobilesecurity/intents/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/UpgradeOffer;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/UpgradeOffer;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/ce;->a:Lde/gdata/mobilesecurity/intents/UpgradeOffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/ce;->a:Lde/gdata/mobilesecurity/intents/UpgradeOffer;

    invoke-static {v2}, Lde/gdata/mobilesecurity/intents/UpgradeOffer;->a(Lde/gdata/mobilesecurity/intents/UpgradeOffer;)Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getOrderText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 45
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/ce;->a:Lde/gdata/mobilesecurity/intents/UpgradeOffer;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/intents/UpgradeOffer;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method
