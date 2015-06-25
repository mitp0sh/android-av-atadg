.class Lde/gdata/mobilesecurity/activities/filter/ad;
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
    .line 696
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/ad;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ad;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/ad;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v2, p2, p3}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/ad;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 706
    aget-object v0, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 707
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v2, v1

    .line 709
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/filter/ad;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v6, v6, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lde/gdata/mobilesecurity/util/MyUtil;->isTimeBefore(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 711
    add-int/lit8 v0, v0, 0x1

    .line 712
    const/16 v2, 0x18

    if-le v0, v2, :cond_2

    move v0, v1

    move v2, v3

    .line 713
    goto :goto_0

    .line 716
    :cond_0
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/ad;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b:Landroid/widget/EditText;

    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/filter/ad;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v5, v0, v4}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/ad;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->h(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 719
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/ad;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v2, v0, v4}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;II)V

    .line 720
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ad;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->c(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Z)Z

    .line 723
    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0
.end method
