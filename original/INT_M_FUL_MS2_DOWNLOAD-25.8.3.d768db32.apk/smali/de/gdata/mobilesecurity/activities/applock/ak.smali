.class Lde/gdata/mobilesecurity/activities/applock/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/ak;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 374
    instance-of v2, p1, Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    .line 375
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/ak;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->showAccessibilityInfoDialog(Landroid/support/v4/app/FragmentActivity;I)V

    .line 382
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 375
    goto :goto_0

    .line 379
    :cond_1
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/ak;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/ak;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->d(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-static {v2, v1}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->showAccessibilityInfoDialog(Landroid/support/v4/app/FragmentActivity;I)V

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2
.end method
