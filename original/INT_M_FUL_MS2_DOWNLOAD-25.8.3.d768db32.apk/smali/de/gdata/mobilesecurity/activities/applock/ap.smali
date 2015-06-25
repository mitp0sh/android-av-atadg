.class Lde/gdata/mobilesecurity/activities/applock/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/ap;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ap;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->e(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    .line 660
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 664
    return-void
.end method
