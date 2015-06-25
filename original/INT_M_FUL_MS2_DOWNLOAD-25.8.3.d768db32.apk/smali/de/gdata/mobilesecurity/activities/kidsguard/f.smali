.class Lde/gdata/mobilesecurity/activities/kidsguard/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/f;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/f;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->a:Landroid/app/Activity;

    const-class v2, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 142
    const-string v1, "LIST_TO_LOAD"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/f;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method
