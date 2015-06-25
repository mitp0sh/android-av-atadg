.class public Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const v7, 0x7f0d03a8

    const v6, 0x7f0d03a2

    .line 675
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 676
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hour"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 677
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "minute"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 679
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->h(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->h:Landroid/app/TimePickerDialog$OnTimeSetListener;

    :goto_0
    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 681
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->h(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v6}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 683
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 684
    const/16 v1, 0x11

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 685
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 686
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 687
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->h(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v6}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    invoke-virtual {v0, v2}, Landroid/app/TimePickerDialog;->setCustomTitle(Landroid/view/View;)V

    .line 690
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f0e00c3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 692
    return-object v0

    .line 679
    :cond_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->i:Landroid/app/TimePickerDialog$OnTimeSetListener;

    goto :goto_0

    .line 681
    :cond_1
    invoke-virtual {p0, v7}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 687
    :cond_2
    invoke-virtual {p0, v7}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
