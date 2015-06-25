.class Lde/gdata/mobilesecurity/activities/debug/k;
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
    .line 393
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/k;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/k;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/k;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    const v2, 0x7f0b01a0

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setDebugPackageName(Ljava/lang/String;)V

    .line 398
    return-void
.end method
