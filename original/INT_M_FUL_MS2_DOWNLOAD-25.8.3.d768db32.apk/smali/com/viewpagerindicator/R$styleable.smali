.class public final Lcom/viewpagerindicator/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CirclePageIndicator:[I

.field public static final CirclePageIndicator_android_background:I = 0x1

.field public static final CirclePageIndicator_android_orientation:I = 0x0

.field public static final CirclePageIndicator_centered:I = 0x2

.field public static final CirclePageIndicator_fillColor:I = 0x5

.field public static final CirclePageIndicator_gapWidth:I = 0x3

.field public static final CirclePageIndicator_pageColor:I = 0x6

.field public static final CirclePageIndicator_radius:I = 0x7

.field public static final CirclePageIndicator_snap:I = 0x8

.field public static final CirclePageIndicator_strokeColor:I = 0x9

.field public static final CirclePageIndicator_strokeWidth:I = 0x4

.field public static final LinePageIndicator:[I

.field public static final LinePageIndicator_android_background:I = 0x0

.field public static final LinePageIndicator_centered:I = 0x1

.field public static final LinePageIndicator_gapWidth:I = 0x2

.field public static final LinePageIndicator_lineWidth:I = 0x6

.field public static final LinePageIndicator_selectedColor:I = 0x3

.field public static final LinePageIndicator_strokeWidth:I = 0x4

.field public static final LinePageIndicator_unselectedColor:I = 0x5

.field public static final TitlePageIndicator:[I

.field public static final TitlePageIndicator_android_background:I = 0x2

.field public static final TitlePageIndicator_android_textColor:I = 0x1

.field public static final TitlePageIndicator_android_textSize:I = 0x0

.field public static final TitlePageIndicator_clipPadding:I = 0x4

.field public static final TitlePageIndicator_footerColor:I = 0x5

.field public static final TitlePageIndicator_footerIndicatorHeight:I = 0x8

.field public static final TitlePageIndicator_footerIndicatorStyle:I = 0x7

.field public static final TitlePageIndicator_footerIndicatorUnderlinePadding:I = 0x9

.field public static final TitlePageIndicator_footerLineHeight:I = 0x6

.field public static final TitlePageIndicator_footerPadding:I = 0xa

.field public static final TitlePageIndicator_linePosition:I = 0xb

.field public static final TitlePageIndicator_selectedBold:I = 0xc

.field public static final TitlePageIndicator_selectedColor:I = 0x3

.field public static final TitlePageIndicator_titlePadding:I = 0xd

.field public static final TitlePageIndicator_topPadding:I = 0xe

.field public static final UnderlinePageIndicator:[I

.field public static final UnderlinePageIndicator_android_background:I = 0x0

.field public static final UnderlinePageIndicator_fadeDelay:I = 0x3

.field public static final UnderlinePageIndicator_fadeLength:I = 0x4

.field public static final UnderlinePageIndicator_fades:I = 0x2

.field public static final UnderlinePageIndicator_selectedColor:I = 0x1

.field public static final ViewPagerIndicator:[I

.field public static final ViewPagerIndicator_vpiCirclePageIndicatorStyle:I = 0x0

.field public static final ViewPagerIndicator_vpiIconPageIndicatorStyle:I = 0x1

.field public static final ViewPagerIndicator_vpiLinePageIndicatorStyle:I = 0x2

.field public static final ViewPagerIndicator_vpiTabPageIndicatorStyle:I = 0x4

.field public static final ViewPagerIndicator_vpiTitlePageIndicatorStyle:I = 0x3

.field public static final ViewPagerIndicator_vpiUnderlinePageIndicatorStyle:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/viewpagerindicator/R$styleable;->CirclePageIndicator:[I

    .line 129
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/viewpagerindicator/R$styleable;->LinePageIndicator:[I

    .line 137
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator:[I

    .line 153
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/viewpagerindicator/R$styleable;->UnderlinePageIndicator:[I

    .line 159
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/viewpagerindicator/R$styleable;->ViewPagerIndicator:[I

    return-void

    .line 118
    nop

    :array_0
    .array-data 4
        0x10100c4
        0x10100d4
        0x7f01001e
        0x7f010022
        0x7f01003b
        0x7f010062
        0x7f010063
        0x7f010064
        0x7f010065
        0x7f010066
    .end array-data

    .line 129
    :array_1
    .array-data 4
        0x10100d4
        0x7f01001e
        0x7f010022
        0x7f010038
        0x7f01003b
        0x7f010044
        0x7f010070
    .end array-data

    .line 137
    :array_2
    .array-data 4
        0x1010095
        0x1010098
        0x10100d4
        0x7f010038
        0x7f010096
        0x7f010097
        0x7f010098
        0x7f010099
        0x7f01009a
        0x7f01009b
        0x7f01009c
        0x7f01009d
        0x7f01009e
        0x7f01009f
        0x7f0100a0
    .end array-data

    .line 153
    :array_3
    .array-data 4
        0x10100d4
        0x7f010038
        0x7f0100a1
        0x7f0100a2
        0x7f0100a3
    .end array-data

    .line 159
    :array_4
    .array-data 4
        0x7f0100a6
        0x7f0100a7
        0x7f0100a8
        0x7f0100a9
        0x7f0100aa
        0x7f0100ab
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method