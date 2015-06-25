.class Lde/gdata/mobilesecurity/activities/logs/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/ab;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ab;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    .line 160
    if-eqz v0, :cond_0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->a(Lde/gdata/mobilesecurity/activities/logs/LogFragment;Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method
