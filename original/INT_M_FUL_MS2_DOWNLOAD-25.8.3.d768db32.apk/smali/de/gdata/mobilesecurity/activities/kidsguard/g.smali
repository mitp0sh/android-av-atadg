.class Lde/gdata/mobilesecurity/activities/kidsguard/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/g;->a:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/g;->a:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 64
    instance-of v2, v0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    if-eqz v2, :cond_0

    .line 65
    check-cast v0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/g;->a:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->updateViews(Landroid/content/Context;)V

    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method
