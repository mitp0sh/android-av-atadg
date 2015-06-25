.class Lde/gdata/mobilesecurity/activities/debug/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/s;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 180
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    .line 181
    if-eqz p2, :cond_0

    const-string v0, "http://appdevlinux.gdata.de:5983/acra/msa"

    move-object v1, v0

    .line 182
    :goto_0
    invoke-virtual {v2, v1}, Lorg/acra/ACRAConfiguration;->setFormUri(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;

    .line 183
    invoke-static {v2}, Lorg/acra/ACRA;->setConfig(Lorg/acra/ACRAConfiguration;)V

    .line 184
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/s;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAcraUrl(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/s;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    const v2, 0x7f0b0189

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void

    .line 181
    :cond_0
    const-string v0, "http://212.23.140.102:80/acra/msa"

    move-object v1, v0

    goto :goto_0
.end method
