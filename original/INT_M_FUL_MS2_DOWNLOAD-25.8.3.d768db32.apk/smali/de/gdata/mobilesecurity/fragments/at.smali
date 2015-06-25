.class Lde/gdata/mobilesecurity/fragments/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/at;->a:Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/at;->a:Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/intents/AccountManagementPre;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    const/4 v0, 0x0

    return v0
.end method
