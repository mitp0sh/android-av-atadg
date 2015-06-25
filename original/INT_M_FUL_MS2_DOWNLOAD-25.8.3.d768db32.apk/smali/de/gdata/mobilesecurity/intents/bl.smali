.class Lde/gdata/mobilesecurity/intents/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lde/gdata/mobilesecurity/intents/Preferences;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Preferences;Z)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/bl;->b:Lde/gdata/mobilesecurity/intents/Preferences;

    iput-boolean p2, p0, Lde/gdata/mobilesecurity/intents/bl;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/intents/bl;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "http://g.litcity.ne.jp/cancel_stg"

    .line 233
    :goto_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/bl;->b:Lde/gdata/mobilesecurity/intents/Preferences;

    iget-object v1, v1, Lde/gdata/mobilesecurity/intents/Preferences;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x1

    return v0

    .line 231
    :cond_0
    const-string v0, "http://g.litcity.ne.jp/cancel"

    goto :goto_0
.end method
