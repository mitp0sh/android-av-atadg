.class Lde/gdata/mobilesecurity/activities/usagecontrol/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/al;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 320
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/al;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/al;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 323
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/al;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/al;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->d(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->setValuesToLockedLocation(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)V

    .line 324
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/al;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->d(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    move-result-object v2

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->setProfil(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/al;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->d(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/al;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->saveIntoDB(Landroid/content/Context;)V

    .line 326
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/al;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/al;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;Landroid/support/v4/app/FragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    const/4 v0, 0x1

    .line 329
    :cond_0
    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/al;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 335
    :cond_1
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/al;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->hideKeyboard(Landroid/content/Context;)V

    .line 336
    return-void

    .line 333
    :cond_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/al;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/al;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
