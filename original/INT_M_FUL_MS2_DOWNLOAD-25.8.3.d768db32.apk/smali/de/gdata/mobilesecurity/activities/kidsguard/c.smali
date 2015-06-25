.class Lde/gdata/mobilesecurity/activities/kidsguard/c;
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
    .line 89
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/c;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 92
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/c;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/c;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardBrowserMode(I)V

    .line 95
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/c;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->f:Landroid/widget/RadioButton;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/c;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardBrowserMode()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 98
    :cond_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
