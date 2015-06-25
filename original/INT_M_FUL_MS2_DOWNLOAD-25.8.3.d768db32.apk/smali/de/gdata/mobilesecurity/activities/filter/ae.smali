.class Lde/gdata/mobilesecurity/activities/filter/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/ae;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 5

    .prologue
    .line 729
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ae;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/ae;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v1, p2, p3}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/ae;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a:Landroid/widget/EditText;

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

    .line 732
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 733
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 735
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/filter/ae;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v4, v4, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->isTimeBefore(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 737
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 738
    const/16 v1, 0x18

    .line 740
    :cond_0
    if-nez v0, :cond_1

    .line 741
    const/16 v0, 0x3b

    .line 742
    add-int/lit8 v1, v1, -0x1

    .line 744
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 746
    :cond_2
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/ae;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a:Landroid/widget/EditText;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/ae;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v3, v1, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 749
    return-void
.end method
