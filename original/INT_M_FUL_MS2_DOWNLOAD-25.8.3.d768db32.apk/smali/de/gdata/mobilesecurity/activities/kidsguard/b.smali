.class Lde/gdata/mobilesecurity/activities/kidsguard/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/b;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/b;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->g:Landroid/widget/RadioButton;

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/b;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 76
    if-nez p2, :cond_1

    .line 77
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/b;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardBrowserMode(I)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/b;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/b;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardBrowserMode(I)V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/b;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->g:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/b;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardBrowserMode(I)V

    goto :goto_0
.end method
