.class public final Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
.super Ljava/lang/Object;
.source "MaterialDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/MaterialDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field final dateSelector:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

.field inputMode:I

.field negativeButtonContentDescription:Ljava/lang/CharSequence;

.field negativeButtonContentDescriptionResId:I

.field negativeButtonText:Ljava/lang/CharSequence;

.field negativeButtonTextResId:I

.field overrideThemeResId:I

.field positiveButtonContentDescription:Ljava/lang/CharSequence;

.field positiveButtonContentDescriptionResId:I

.field positiveButtonText:Ljava/lang/CharSequence;

.field positiveButtonTextResId:I

.field selection:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field titleText:Ljava/lang/CharSequence;

.field titleTextResId:I


# direct methods
.method private constructor <init>(Lcom/google/android/material/datepicker/DateSelector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;)V"
        }
    .end annotation

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 713
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->overrideThemeResId:I

    .line 717
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleTextResId:I

    const/4 v1, 0x0

    .line 718
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleText:Ljava/lang/CharSequence;

    .line 719
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonTextResId:I

    .line 720
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonText:Ljava/lang/CharSequence;

    .line 721
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonContentDescriptionResId:I

    .line 722
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonContentDescription:Ljava/lang/CharSequence;

    .line 723
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonTextResId:I

    .line 724
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    .line 725
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonContentDescriptionResId:I

    .line 726
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonContentDescription:Ljava/lang/CharSequence;

    .line 727
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->selection:Ljava/lang/Object;

    .line 728
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->inputMode:I

    .line 731
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    return-void
.end method

.method private createDefaultOpenAt()Lcom/google/android/material/datepicker/Month;
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    .line 976
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->monthInValidRange(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 981
    :cond_0
    invoke-static {}, Lcom/google/android/material/datepicker/Month;->current()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    .line 982
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->monthInValidRange(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 984
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    return-object v0
.end method

.method public static customDatePicker(Lcom/google/android/material/datepicker/DateSelector;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 742
    new-instance v0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;-><init>(Lcom/google/android/material/datepicker/DateSelector;)V

    return-object v0
.end method

.method public static datePicker()Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 751
    new-instance v0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    new-instance v1, Lcom/google/android/material/datepicker/SingleDateSelector;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/SingleDateSelector;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;-><init>(Lcom/google/android/material/datepicker/DateSelector;)V

    return-object v0
.end method

.method public static dateRangePicker()Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 760
    new-instance v0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    new-instance v1, Lcom/google/android/material/datepicker/RangeDateSelector;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/RangeDateSelector;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;-><init>(Lcom/google/android/material/datepicker/DateSelector;)V

    return-object v0
.end method

.method private static monthInValidRange(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints;)Z
    .locals 1

    .line 988
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 989
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->getEnd()Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/material/datepicker/MaterialDatePicker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/MaterialDatePicker<",
            "TS;>;"
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    if-nez v0, :cond_0

    .line 954
    new-instance v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->build()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 956
    :cond_0
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleTextResId:I

    if-nez v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getDefaultTitleResId()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleTextResId:I

    .line 960
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->selection:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 961
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v1, v0}, Lcom/google/android/material/datepicker/DateSelector;->setSelection(Ljava/lang/Object;)V

    .line 964
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getOpenAt()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    if-nez v0, :cond_3

    .line 965
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->createDefaultOpenAt()Lcom/google/android/material/datepicker/Month;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/CalendarConstraints;->setOpenAt(Lcom/google/android/material/datepicker/Month;)V

    .line 968
    :cond_3
    invoke-static {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->newInstance(Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;)Lcom/google/android/material/datepicker/MaterialDatePicker;

    move-result-object v0

    return-object v0
.end method

.method public setCalendarConstraints(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 798
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object p0
.end method

.method public setDayViewDecorator(Lcom/google/android/material/datepicker/DayViewDecorator;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/DayViewDecorator;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 806
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    return-object p0
.end method

.method public setInputMode(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 946
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->inputMode:I

    return-object p0
.end method

.method public setNegativeButtonContentDescription(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 923
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonContentDescriptionResId:I

    const/4 p1, 0x0

    .line 924
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButtonContentDescription(Ljava/lang/CharSequence;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 937
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonContentDescription:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 938
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonContentDescriptionResId:I

    return-object p0
.end method

.method public setNegativeButtonText(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 896
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonTextResId:I

    const/4 p1, 0x0

    .line 897
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 909
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 910
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonTextResId:I

    return-object p0
.end method

.method public setPositiveButtonContentDescription(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 869
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonContentDescriptionResId:I

    const/4 p1, 0x0

    .line 870
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPositiveButtonContentDescription(Ljava/lang/CharSequence;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 883
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonContentDescription:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 884
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonContentDescriptionResId:I

    return-object p0
.end method

.method public setPositiveButtonText(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 842
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonTextResId:I

    const/4 p1, 0x0

    .line 843
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 855
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonText:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 856
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonTextResId:I

    return-object p0
.end method

.method public setSelection(Ljava/lang/Object;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 782
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->selection:Ljava/lang/Object;

    return-object p0
.end method

.method public setTextInputFormat(Ljava/text/SimpleDateFormat;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/SimpleDateFormat;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 775
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0, p1}, Lcom/google/android/material/datepicker/DateSelector;->setTextInputFormat(Ljava/text/SimpleDateFormat;)V

    return-object p0
.end method

.method public setTheme(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 790
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->overrideThemeResId:I

    return-object p0
.end method

.method public setTitleText(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 817
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleTextResId:I

    const/4 p1, 0x0

    .line 818
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleText(Ljava/lang/CharSequence;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 829
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleText:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 830
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleTextResId:I

    return-object p0
.end method
