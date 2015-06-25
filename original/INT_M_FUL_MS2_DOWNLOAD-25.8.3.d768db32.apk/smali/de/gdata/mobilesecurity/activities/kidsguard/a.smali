.class Lde/gdata/mobilesecurity/activities/kidsguard/a;
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
    .line 62
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/a;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/a;->a:Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardBrowserFragFinnEnabled(Z)V

    .line 66
    return-void
.end method
