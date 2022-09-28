extern crate core;

#[derive(Debug, PartialEq, Eq)]
pub enum Comparison {
    Equal,
    Sublist,
    Superlist,
    Unequal,
}

pub fn sublist<T: PartialEq>(_first_list: &[T], _second_list: &[T]) -> Comparison {
    fn find_window<T: PartialEq>(a : &[T], b : &[T]) -> bool {
        a.is_empty() || b.windows(a.len()).any(|v| a == v)
    }
    return if _first_list.len() == _second_list.len() && _first_list == _second_list {
        Comparison::Equal
    } else if _first_list.len() < _second_list.len() && find_window(_first_list, _second_list) {
        Comparison::Sublist
    } else if find_window(_second_list, _first_list) {
        Comparison::Superlist
    } else {
        Comparison::Unequal
    }
}
