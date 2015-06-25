.class Lde/gdata/mobilesecurity/intents/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lde/gdata/mobilesecurity/intents/Main;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Main;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1607
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/r;->c:Lde/gdata/mobilesecurity/intents/Main;

    iput p2, p0, Lde/gdata/mobilesecurity/intents/r;->a:I

    iput-object p3, p0, Lde/gdata/mobilesecurity/intents/r;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1610
    iget v0, p0, Lde/gdata/mobilesecurity/intents/r;->a:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    new-instance v0, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1612
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1613
    const-string v1, "MENU_ITEM"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1614
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/r;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    const-string v2, "SELECT_MENU_ITEM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1623
    :goto_0
    return-void

    .line 1618
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1619
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1620
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/r;->b:Landroid/content/Context;

    const-class v2, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1621
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/r;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
