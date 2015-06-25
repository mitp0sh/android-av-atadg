.class Lde/gdata/mobilesecurity/activities/debug/v;
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
    .line 218
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/v;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/v;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBitDefenderKillSwitch(Z)V

    .line 222
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/v;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->b(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/v;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isBitDefenderEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 223
    return-void
.end method
