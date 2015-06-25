.class Lde/gdata/mobilesecurity/activities/kidsguard/d;
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
    .line 103
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/d;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/d;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/d;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardBrowserMode(I)V

    .line 109
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/d;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v1, v0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->g:Landroid/widget/RadioButton;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/d;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardBrowserMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 112
    :cond_0
    return-void

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
