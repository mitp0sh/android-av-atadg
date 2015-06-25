.class final Lde/gdata/mobilesecurity/activities/logs/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/z;->a:Landroid/content/Context;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/logs/z;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 597
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/z;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 598
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/z;->b:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x5

    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->showSigsOutdatedDialog(Landroid/app/Activity;ILandroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 601
    if-nez v0, :cond_0

    .line 603
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 604
    const-string v1, "showSigsOutdatedDialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 605
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 606
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 607
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/z;->a:Landroid/content/Context;

    const-string v2, "de.gdata.mobilesecurity.intents.Main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/z;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 610
    :cond_0
    return-void
.end method
