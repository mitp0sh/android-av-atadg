.class Lde/gdata/mobilesecurity/fragments/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/PreferencesFragment;Z)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/am;->b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    iput-boolean p2, p0, Lde/gdata/mobilesecurity/fragments/am;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/fragments/am;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "http://g.litcity.ne.jp/cancel_stg"

    .line 133
    :goto_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/am;->b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    return v0

    .line 131
    :cond_0
    const-string v0, "http://g.litcity.ne.jp/cancel"

    goto :goto_0
.end method
