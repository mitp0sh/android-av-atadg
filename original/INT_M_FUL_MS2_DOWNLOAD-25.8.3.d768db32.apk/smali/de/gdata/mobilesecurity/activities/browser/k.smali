.class Lde/gdata/mobilesecurity/activities/browser/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/k;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 52
    if-eqz p2, :cond_0

    .line 53
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/k;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBrowserStartupPage(I)V

    .line 55
    :cond_0
    return-void
.end method
