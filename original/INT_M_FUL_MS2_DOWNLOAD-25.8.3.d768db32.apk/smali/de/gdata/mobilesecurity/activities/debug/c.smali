.class Lde/gdata/mobilesecurity/activities/debug/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/c;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/c;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/c;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->c(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMockLocationsAllowed(Z)V

    .line 305
    return-void
.end method
