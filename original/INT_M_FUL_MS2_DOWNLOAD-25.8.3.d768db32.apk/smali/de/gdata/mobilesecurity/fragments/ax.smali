.class Lde/gdata/mobilesecurity/fragments/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/ax;->a:Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ax;->a:Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Preferences;->showAdvancedOptions(Landroid/app/Activity;)V

    .line 79
    const/4 v0, 0x1

    return v0
.end method
