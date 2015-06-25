.class Lde/gdata/mobilesecurity/privacy/p;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/ChatFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/privacy/ChatFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 86
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/p;->a:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    .line 87
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 88
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/q;

    .line 102
    new-instance v2, Lde/gdata/mobilesecurity/sms/SMS;

    invoke-direct {v2, p3}, Lde/gdata/mobilesecurity/sms/SMS;-><init>(Landroid/database/Cursor;)V

    .line 103
    iget-object v3, v0, Lde/gdata/mobilesecurity/privacy/q;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/sms/SMS;->getType()I

    move-result v1

    if-ne v1, v7, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/p;->a:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/q;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/sms/SMS;->getDate()J

    move-result-wide v4

    const/16 v3, 0x15

    invoke-static {p2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/q;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/sms/SMS;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/sms/SMS;->getType()I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 109
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/q;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/p;->a:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->a(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_1

    .line 111
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/p;->a:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->b(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :goto_1
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/q;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/q;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :goto_2
    return-void

    .line 103
    :cond_0
    const v1, 0x7f0d04f2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/p;->a:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->b(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 118
    :cond_2
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/q;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/p;->a:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->c(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_3

    .line 120
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/p;->a:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->d(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    :goto_3
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/q;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/q;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 122
    :cond_3
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/p;->a:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->d(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    new-instance v0, Lde/gdata/mobilesecurity/sms/SMS;

    invoke-direct {v0, p2}, Lde/gdata/mobilesecurity/sms/SMS;-><init>(Landroid/database/Cursor;)V

    .line 132
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 133
    const v1, 0x7f03009a

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 134
    new-instance v2, Lde/gdata/mobilesecurity/privacy/q;

    invoke-direct {v2, p0, v3}, Lde/gdata/mobilesecurity/privacy/q;-><init>(Lde/gdata/mobilesecurity/privacy/p;Lde/gdata/mobilesecurity/privacy/i;)V

    .line 135
    const v0, 0x7f0b034d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/q;->c:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0b034f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/q;->d:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0b034e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/q;->e:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0b034c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/q;->a:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f0b0350

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/q;->b:Landroid/widget/ImageView;

    .line 141
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    return-object v1
.end method
