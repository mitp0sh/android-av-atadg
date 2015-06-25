.class Lde/gdata/mobilesecurity/activities/browser/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/n;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    const-string v0, ""

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/n;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/n;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/n;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBrowserSpecificPage(Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method
