.class Lde/gdata/mobilesecurity/activities/usagecontrol/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ag;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 248
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ag;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;Z)Z

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ag;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->e(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 250
    array-length v1, v0

    if-le v1, v3, :cond_0

    .line 251
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ag;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;II)V

    .line 253
    :cond_0
    return-void
.end method
