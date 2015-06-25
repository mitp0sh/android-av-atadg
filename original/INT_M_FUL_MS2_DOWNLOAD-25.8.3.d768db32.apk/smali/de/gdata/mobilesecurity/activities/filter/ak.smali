.class Lde/gdata/mobilesecurity/activities/filter/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/ak;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ak;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->c(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Z)Z

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/ak;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b:Landroid/widget/EditText;

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

    .line 367
    array-length v1, v0

    if-le v1, v3, :cond_0

    .line 368
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/ak;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;II)V

    .line 370
    :cond_0
    return-void
.end method
