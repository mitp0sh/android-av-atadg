.class Lde/gdata/mobilesecurity/fragments/aw;
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
    .line 64
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/aw;->a:Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/aw;->a:Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->sendArpLog(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method
