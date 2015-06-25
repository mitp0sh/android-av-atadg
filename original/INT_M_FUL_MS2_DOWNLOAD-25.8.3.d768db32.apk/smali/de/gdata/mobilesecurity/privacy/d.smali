.class Lde/gdata/mobilesecurity/privacy/d;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/CallLogFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/privacy/CallLogFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 56
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/d;->a:Lde/gdata/mobilesecurity/privacy/CallLogFragment;

    .line 57
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 58
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/e;

    .line 71
    new-instance v1, Lde/gdata/mobilesecurity/privacy/Call;

    invoke-direct {v1, p3}, Lde/gdata/mobilesecurity/privacy/Call;-><init>(Landroid/database/Cursor;)V

    .line 72
    iget-object v2, v0, Lde/gdata/mobilesecurity/privacy/e;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, v0, Lde/gdata/mobilesecurity/privacy/e;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/Call;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->getDefaultDateTimeForDefaultLocale(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/Call;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/e;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/d;->a:Lde/gdata/mobilesecurity/privacy/CallLogFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/e;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/d;->a:Lde/gdata/mobilesecurity/privacy/CallLogFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/e;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/d;->a:Lde/gdata/mobilesecurity/privacy/CallLogFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 93
    const v1, 0x7f030065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 94
    new-instance v2, Lde/gdata/mobilesecurity/privacy/e;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/privacy/e;-><init>(Lde/gdata/mobilesecurity/privacy/d;)V

    .line 95
    const v0, 0x7f0b0153

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/e;->a:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0b0154

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/e;->b:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0b0152

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/e;->c:Landroid/widget/ImageView;

    .line 98
    const v0, 0x7f0b0151

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/e;->d:Landroid/widget/CheckBox;

    .line 100
    iget-object v0, v2, Lde/gdata/mobilesecurity/privacy/e;->d:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 102
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    return-object v1
.end method
