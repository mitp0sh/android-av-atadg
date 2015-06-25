.class Lde/gdata/mobilesecurity/fragments/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/PreferencesFragment;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/al;->a:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/al;->a:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Preferences;->showLicenseDialog(Landroid/app/Activity;)V

    .line 121
    const/4 v0, 0x1

    return v0
.end method
