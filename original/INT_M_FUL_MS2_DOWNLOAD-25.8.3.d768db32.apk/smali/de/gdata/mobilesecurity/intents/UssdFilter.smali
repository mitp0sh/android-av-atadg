.class public Lde/gdata/mobilesecurity/intents/UssdFilter;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const v11, 0x7f0b00d1

    const v10, 0x7f0b00ca

    const v9, 0x7f0b00c6

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 25
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/UssdFilter;->setContentView(I)V

    .line 29
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/UssdFilter;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 31
    const v1, 0x7f0b00c4

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/UssdFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 33
    const v0, 0x7f0b00cd

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/UssdFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 34
    const v1, 0x7f0b00c9

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/UssdFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 36
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/UssdFilter;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 37
    if-eqz v2, :cond_2

    .line 39
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%23"

    const-string v6, "#"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%2a"

    const-string v6, "*"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%2b"

    const-string v6, "+"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0, v11}, Lde/gdata/mobilesecurity/intents/UssdFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    const-string v1, "*"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "%2a"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    invoke-virtual {p0, v10}, Lde/gdata/mobilesecurity/intents/UssdFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 53
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    const v1, 0x7f0d050c

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/UssdFilter;->setTitle(I)V

    .line 56
    invoke-virtual {p0, v9}, Lde/gdata/mobilesecurity/intents/UssdFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    const v3, 0x7f0d0291

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 59
    new-instance v1, Lde/gdata/mobilesecurity/intents/cf;

    invoke-direct {v1, p0, v2}, Lde/gdata/mobilesecurity/intents/cf;-><init>(Lde/gdata/mobilesecurity/intents/UssdFilter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const v1, 0x7f0b00c7

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/UssdFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    invoke-virtual {p0, v9}, Lde/gdata/mobilesecurity/intents/UssdFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 73
    const v2, 0x7f020098

    invoke-virtual {v1, v2, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 75
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    invoke-virtual {p0, v10}, Lde/gdata/mobilesecurity/intents/UssdFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 78
    new-instance v1, Lde/gdata/mobilesecurity/intents/cg;

    invoke-direct {v1, p0, v4}, Lde/gdata/mobilesecurity/intents/cg;-><init>(Lde/gdata/mobilesecurity/intents/UssdFilter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/UssdFilter;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 99
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 102
    const v2, 0x7f0b00d0

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/intents/UssdFilter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 103
    const-string v4, "DE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 104
    const v3, 0x7f020199

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :goto_1
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    invoke-virtual {p0, v10}, Lde/gdata/mobilesecurity/intents/UssdFilter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 111
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    const v2, 0x7f0d00f4

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/intents/UssdFilter;->setTitle(I)V

    .line 114
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    invoke-virtual {p0, v9}, Lde/gdata/mobilesecurity/intents/UssdFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    const v1, 0x7f0d0292

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    invoke-virtual {p0, v11}, Lde/gdata/mobilesecurity/intents/UssdFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    const v1, 0x7f0d0505

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 122
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_0

    .line 106
    :cond_3
    const v3, 0x7f020198

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
